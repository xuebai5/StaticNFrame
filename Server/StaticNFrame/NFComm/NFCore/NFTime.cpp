// -------------------------------------------------------------------------
//    @FileName         :    NFTime.cpp
//    @Author           :    GaoYi
//    @Date             :    2019-06-19
//    @Email			:    445267987@qq.com
//    @Module           :    NFCore
//
// -------------------------------------------------------------------------

#include "NFTime.h"

#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <errno.h>

int32_t NFTime::zoneTime_ = 28800;// 8 * 60 * 60 UTC+���ʱ��ʱ��= ����ʱ�� �� 
uint64_t NFTime::gmStartTime_ = 0;  //gm��ʾ��ʱ��
uint64_t NFTime::gmSetTimeTime_ = 0; //GM����ʱ�ĵ�ǰLINUXʱ��,ֻ�ĵ���


NFTime NFTime::Now()
{
	NFTime t;
	uint64_t nano = (uint64_t)NFGetNanoSeccondTime();
	t.sec_ = nano / 1000000000;
	t.nsec_ = nano - t.sec_ * 1000000000;
	t.realSec_ = t.sec_;
	if (gmStartTime_ > 0)
	{
		t.sec_ = gmStartTime_ + (t.sec_ - gmSetTimeTime_);
	}
	return t;
}

NFTime NFTime::GmSetTime(int year, int month, int day, int hour, int min, int sec)
{
	gmSetTimeTime_ = NFTime::Now().realSec_;

	NFTime t;
	struct tm tm;
	tm.tm_year = year - 1900;
	tm.tm_mon = month - 1;
	tm.tm_mday = day;
	tm.tm_hour = hour;
	tm.tm_min = min;
	tm.tm_sec = sec;

	t.sec_ = mktime(&tm);
	t.nsec_ = 0;

	gmStartTime_ = t.sec_;

	return t;
}

//convert time 
uint64_t NFTime::GetSecTime(int year, int month, int day, int hour, int min, int sec)
{

	struct tm tmTime;
	memset(&tmTime, 0, sizeof(tmTime));
	tmTime.tm_year = year - 1900;
	tmTime.tm_mon = month - 1;
	tmTime.tm_mday = day;
	tmTime.tm_hour = hour;
	tmTime.tm_min = min;
	tmTime.tm_sec = sec;

	time_t time = mktime(&tmTime);

	return time;
}

NFTime::NFTime(int year, int month, int day, int hour, int min, int sec)
{
	struct tm tm;
	memset(&tm, 0, sizeof(tm));
	tm.tm_year = year - 1900;
	tm.tm_mon = month - 1;
	tm.tm_mday = day;
	tm.tm_hour = hour;
	tm.tm_min = min;
	tm.tm_sec = sec;

	sec_ = mktime(&tm);
	nsec_ = 0;
}

uint64_t NFTime::Tick()
{
	return (uint64_t)NFGetTime();
}

time_t NFTime::UnixSec()
{
	return (time_t)sec_;
}

time_t NFTime::UnixSecOnMondayZero()
{
	NFDate date;
	LocalDate(&date);
	int wday = date.wday == 0 ? 7 : date.wday;
	return UnixSec() - (wday - 1) * 3600 * 24 - date.hour * 3600 - date.min * 60 - date.sec;
}

uint64_t NFTime::UnixMSec()
{
	return sec_ * 1000 + nsec_ / 1000000;
}

uint64_t NFTime::UnixNano()
{
	return sec_ * 1000000000 + nsec_;
}

void NFTime::LocalDate(struct NFDate *d)
{
	localtime_r(&sec_, (struct tm *)d);
	d->year += 1900;
	d->mon += 1;
}

//uint64_t Time::LocalSec()
//{
//	time_t sec = Time::Now().sec_ + Time::zoneTime_;
//	return sec;
//}
//
//
//uint64_t Time::LocalMSec()
//{
//	time_t msec = (Time::Now().sec() + Time::zoneTime_) * 1000 + Time::Now().nsec_ / 1000000;
//	return msec;
//}

bool NFTime::IsZero()
{
	struct NFDate date;
	LocalDate(&date);
	return (
		date.hour == 0 &&
		date.min == 0 &&
		date.sec == 0
		);
}

bool NFTime::LocalDateFormat(const char *fmt, char *timestr, size_t len)
{
	struct tm tm;
	localtime_r(&sec_, &tm);
	return strftime(timestr, len, fmt, &tm) > 0;
}

void NFTime::Sleep(uint32_t ms)
{
#if NF_PLATFORM == NF_PLATFORM_WIN
	::Sleep(ms);
#else
	struct timespec req;
	struct timespec rem;
	int res = -1;
	req.tv_sec = ms / 1000;
	req.tv_nsec = ms % 1000 * 1000000;
	while (res < 0)
	{
		res = clock_nanosleep(CLOCK_MONOTONIC, 0, &req, &rem);
		if (res < 0)
		{
			if (errno == EINTR)
			{
				req = rem;
			}
			else
			{
				break;
			}
		}
	}
#endif
}

struct NFDate NFTime::GetLocalDate()
{
	struct NFDate date;
	NFTime::Now().LocalDate(&date);
	return date;
}

struct NFDate NFTime::GetLocalDate(uint64_t unixSec)
{
	struct NFDate date;
	NFTime(unixSec, 0).LocalDate(&date);
	return date;
}

int32_t NFTime::GetLocalDayDifference(uint64_t left, uint64_t right)
{
	tm t1;
	localtime_r((const time_t*)&left, &t1);
	t1.tm_hour = 0;
	t1.tm_min = 0;
	t1.tm_sec = 0;

	tm t2;
	localtime_r((const time_t*)&right, &t2);
	t2.tm_hour = 0;
	t2.tm_min = 0;
	t2.tm_sec = 0;

	time_t zeroTime1 = mktime((tm*)&t1);
	time_t zeroTime2 = mktime((tm*)&t2);

	return (int32_t)(zeroTime2 - zeroTime1) / (24 * 3600);
}

uint64_t NFTime::GetDayUpdateTime(uint64_t timeSec, int32_t nHour)
{
	tm t1;
	localtime_r((const time_t*)&timeSec, &t1);
	t1.tm_hour = nHour;
	t1.tm_min = 0;
	t1.tm_sec = 0;

	return mktime((tm*)&t1);
}

uint64_t NFTime::GetWeekUpdateTime(uint64_t timeSec, int32_t nHour)
{
	NFDate date = GetLocalDate(timeSec);
	//��ǰ���ܼ�
	int32_t curDay = (date.wday == 0) ? 7 : date.wday;
	//���㵽��һ��Ҫ��ȥ������
	uint64_t mondaySec = timeSec - ((curDay - 1) * 3600 * 24);
	//������һ5�������
	tm t1;
	localtime_r((const time_t*)&mondaySec, &t1);
	t1.tm_hour = nHour;
	t1.tm_min = 0;
	t1.tm_sec = 0;

	return mktime((tm*)&t1);
}

uint64_t NFTime::GetZeroTime(uint64_t timeSec)
{
	tm t1;
	localtime_r((const time_t*)&timeSec, &t1);
	t1.tm_hour = 0;
	t1.tm_min = 0;
	t1.tm_sec = 0;
	return mktime((tm*)&t1);
}