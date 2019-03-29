// -------------------------------------------------------------------------
//    @FileName         :    NFProtobufCommon.cpp
//    @Author           :    GaoYi
//    @Date             :    2019/3/2
//    @Email			:    445267987@qq.com
//    @Module           :    NFProtobufCommon
//
// -------------------------------------------------------------------------

#include "NFProtobufCommon.h"
#include "NFLogMgr.h"
#include "common/lexical_cast.hpp"

bool NFProtobufCommon::MessageToJsonString(const google::protobuf::Message& msg, std::string& json)
{
	google::protobuf::util::JsonPrintOptions options;
	options.always_print_enums_as_ints = true;
	options.preserve_proto_field_names = true;

	google::protobuf::util::Status status = google::protobuf::util::MessageToJsonString(msg, &json, options);
	if (!status.ok())
	{
		NFLogError(NF_LOG_SYSTEMLOG, 0, "MessageToJsonString Error | {}", status.error_message().ToString());
	}
	return status.ok();
}

bool NFProtobufCommon::JsonStringToMessage(const string& json, google::protobuf::Message& msg)
{
	google::protobuf::util::JsonParseOptions options;
	options.ignore_unknown_fields = true;
	google::protobuf::util::Status status = google::protobuf::util::JsonStringToMessage(json, &msg, options);
	if (!status.ok())
	{
		NFLogError(NF_LOG_SYSTEMLOG, 0, "JsonStringToMessage Error | {}", status.error_message().ToString());
	}
	return status.ok();
}

std::string NFProtobufCommon::GetFieldsString(const google::protobuf::Message& message, const google::protobuf::FieldDescriptor* pFieldDesc)
{
	const google::protobuf::Reflection* pReflect = message.GetReflection();
	if (pReflect == nullptr || pFieldDesc == nullptr) return std::string();

	switch (pFieldDesc->cpp_type())
	{
	case google::protobuf::FieldDescriptor::CPPTYPE_INT32:
	{
		int32_t value = pReflect->GetInt32(message, pFieldDesc);
		return lexical_cast<std::string>(value);
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_INT64:
	{
		int64_t value = pReflect->GetInt64(message, pFieldDesc);
		return lexical_cast<std::string>(value);
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_UINT32:
	{
		uint32_t value = pReflect->GetUInt32(message, pFieldDesc);
		return lexical_cast<std::string>(value);
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_UINT64:
	{
		uint64_t value = pReflect->GetUInt64(message, pFieldDesc);
		return lexical_cast<std::string>(value);
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_DOUBLE:
	{
		double value = pReflect->GetDouble(message, pFieldDesc);
		return lexical_cast<std::string>(value);
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_FLOAT:
	{
		float value = pReflect->GetFloat(message, pFieldDesc);
		return lexical_cast<std::string>(value);
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_BOOL:
	{
		bool value = pReflect->GetBool(message, pFieldDesc);
		return lexical_cast<std::string>(value);
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_ENUM:
	{
		const google::protobuf::EnumValueDescriptor* pEnumDesc = pReflect->GetEnum(message, pFieldDesc);
		if (pEnumDesc)
		{
			return lexical_cast<std::string>(pEnumDesc->number());
		}
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_STRING:
	{
		std::string value = pReflect->GetString(message, pFieldDesc);
		return value;
	}
	break;
	case google::protobuf::FieldDescriptor::CPPTYPE_MESSAGE:
	{
		const google::protobuf::Message& value = pReflect->GetMessage(message, pFieldDesc);
		std::string msg;
		value.SerializePartialToString(&msg);
		return msg;
	}
	break;
	default:
		break;
	}
	return std::string();
}

/*
** sqlite,mysql��message���÷���ȡ�����ݿ�����
*/
/*���û��db_base�ṹ������Ϊ��һ���Ǳ���������һ���ַ���
** ����
message create_sqlite_table
{
	optional std::string table_name = 1;
}

����ַ���Ϊ�գ��ͽ��������ɱ���
create_sqlite_table tableUser;
tableUser.set_table_name("");
���ʱ��table_name���Ǳ���

�����
create_sqlite_table tableUser;
tableUser.set_table_name("gaoyi");
��ôgaoyi���Ǳ���

** ���db_base�ṹ���ڣ� db_base�ĵ�һ�б�����һ���ַ�����
message message_sqlite_base
{
	optional string table_name = 1; //���ݿ����
}

message create_sqlite_table
{
	optional message_sqlite_base db_base = 1;
}

���db_base��һ��table_name��ֵ����ôtable_name��ֵ���Ǳ�������Ȼtable_name�����Ǳ�����

message message_sqlite_base
{
optional string xx_table = 1; //���ݿ����
}

message create_sqlite_table
{
	optional message_sqlite_base db_base = 1;
}

xx_tableΪ�գ���ôxx_table���Ǳ��������Ա��⸳ֵ
*/
std::string NFProtobufCommon::GetDBNameFromMessage(const google::protobuf::Message& message)
{
	const google::protobuf::Descriptor* pDesc = message.GetDescriptor();
	if (pDesc == nullptr) return std::string();

	const google::protobuf::Reflection* pReflect = message.GetReflection();
	if (pReflect == nullptr) return std::string();

	const google::protobuf::FieldDescriptor* pDbBaseFieldDesc = pDesc->FindFieldByLowercaseName("db_base");
	if (pDbBaseFieldDesc == nullptr)
	{
		if (pDesc->field_count() <= 0)
		{
			return std::string();
		}

		//ȡ��һ��
		const google::protobuf::FieldDescriptor* pTableNameFieldDesc = pDesc->field(0);
		if (pTableNameFieldDesc == nullptr || pTableNameFieldDesc->cpp_type() != google::protobuf::FieldDescriptor::CPPTYPE_STRING)
		{
			return std::string();
		}
		
		std::string fieldName = pTableNameFieldDesc->name();
		std::string fieldValue = pReflect->GetString(message, pTableNameFieldDesc);
		if (fieldValue.empty())
		{
			return fieldName;
		}
		return fieldValue;
	}

	if (pDbBaseFieldDesc->cpp_type() != google::protobuf::FieldDescriptor::CPPTYPE_MESSAGE)
	{
		return std::string();
	}

	{
		const google::protobuf::Message& dbBaseMessage = pReflect->GetMessage(message, pDbBaseFieldDesc);

		const google::protobuf::Descriptor* pDbBaseDesc = dbBaseMessage.GetDescriptor();
		if (pDbBaseDesc == nullptr) return std::string();

		const google::protobuf::Reflection* pDbBaseReflect = dbBaseMessage.GetReflection();
		if (pDbBaseReflect == nullptr) return std::string();

		if (pDbBaseDesc->field_count() <= 0) return std::string();

		//ȡdb_base�ṹ�ĵ�һ��
		const google::protobuf::FieldDescriptor* pTableNameDesc = pDbBaseDesc->field(0);
		if (pTableNameDesc == nullptr || pTableNameDesc->cpp_type() != google::protobuf::FieldDescriptor::CPPTYPE_STRING) return std::string();

		std::string fieldName = pTableNameDesc->name();
		std::string fieldValue = pDbBaseReflect->GetString(dbBaseMessage, pTableNameDesc);
		if (fieldValue.empty())
		{
			return fieldName;
		}
		return fieldValue;
	}
}

std::string  NFProtobufCommon::GetSqliteColumnFromMessage(const google::protobuf::Message& message, bool firstKey)
{
	const google::protobuf::Descriptor* pDesc = message.GetDescriptor();
	if (pDesc == nullptr) return std::string();

	const google::protobuf::Reflection* pReflect = message.GetReflection();
	if (pReflect == nullptr) return std::string();

	std::string columnSql;
	for (int i = 0; i < pDesc->field_count(); i++)
	{
		const google::protobuf::FieldDescriptor* pFieldDesc = pDesc->field(i);
		std::string columnStr = pFieldDesc->name() + " ";
		if (i == 0 && firstKey)
		{
			if (pFieldDesc->cpp_type() == google::protobuf::FieldDescriptor::CPPTYPE_INT32 ||
				pFieldDesc->cpp_type() == google::protobuf::FieldDescriptor::CPPTYPE_UINT32 ||
				pFieldDesc->cpp_type() == google::protobuf::FieldDescriptor::CPPTYPE_INT64 ||
				pFieldDesc->cpp_type() == google::protobuf::FieldDescriptor::CPPTYPE_UINT64)
			{
				columnStr += " INTEGER PRIMARY KEY AUTOINCREMENT,";
				columnSql += columnStr;
				continue;
			}
		}

		switch (pFieldDesc->cpp_type())
		{
		case google::protobuf::FieldDescriptor::CPPTYPE_INT32:
		{
			columnStr += "int";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_INT64:
		{
			columnStr += "bigint";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_UINT32:
		{
			columnStr += "int";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_UINT64:
		{
			columnStr += "bigint";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_DOUBLE:
		{
			columnStr += "real";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_FLOAT:
		{
			columnStr += "real";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_BOOL:
		{
			columnStr += "int";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_ENUM:
		{
			columnStr += "int";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_STRING:
		{
			columnStr += "text";
		}
		break;
		case google::protobuf::FieldDescriptor::CPPTYPE_MESSAGE:
		{
			columnStr += "blob";
		}
		break;
		default:
			break;
		}

		if (i == 0 && firstKey)
		{
			columnStr += " PRIMARY KEY,";
		}

		columnSql += columnStr;
		if (i != pDesc->field_count() - 1)
		{
			columnSql += ",";
		}
	}

	return columnSql;
}

/*
** sqlite��message���÷���,��message��field name����prepare��Ҫ�����,����
** insert into UserInOutRecord values(?,?,?,?,?,?)
*/
std::string NFProtobufCommon::GetSqlitePrepareFromMessage(const google::protobuf::Message& message)
{
	const google::protobuf::Descriptor* pDesc = message.GetDescriptor();
	if (pDesc == nullptr) return false;

	const google::protobuf::Reflection* pReflect = message.GetReflection();
	if (pReflect == nullptr) return false;

	//��ñ�������
	std::string strTableName = NFProtobufCommon::GetDBNameFromMessage(message);
	if (strTableName.empty()) return false;

	const google::protobuf::FieldDescriptor* pDbFieldsFieldDesc = pDesc->FindFieldByLowercaseName("db_fields");
	if (pDbFieldsFieldDesc == nullptr || pDbFieldsFieldDesc->cpp_type() != google::protobuf::FieldDescriptor::CPPTYPE_MESSAGE) return false;

	const google::protobuf::Message& dbFieldsMessage = pReflect->GetMessage(message, pDbFieldsFieldDesc);

	const google::protobuf::Descriptor* pFieldsMessageDesc = dbFieldsMessage.GetDescriptor();
	if (pFieldsMessageDesc == nullptr) return std::string();

	std::string sql = "insert into " + strTableName + " values(";
	for (int i = 0; i < pFieldsMessageDesc->field_count(); i++)
	{
		sql += "?";
		if (i != (pFieldsMessageDesc->field_count() - 1))
		{
			sql += ",";
		}
	}

	sql += ")";
	return sql;
}