#include "gtest/gtest.h"

TEST(Numeric, Equal)
{
	EXPECT_EQ(1, 1);
}

TEST(Numeric, NotEqual)
{
	EXPECT_EQ(1, 2);
}
