#include <gtest/gtest.h>

GTEST_TEST(Numeric, OneIsOnePass)
{
	EXPECT_EQ(1, 1);
}

GTEST_TEST(Numeric, OneIsTwoFail)
{
	EXPECT_EQ(1, 2);
}

int main(int nArgs, char ** args)
{
	::testing::InitGoogleTest(&nArgs, args);
    return RUN_ALL_TESTS();
}
