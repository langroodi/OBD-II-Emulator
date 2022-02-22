#include <gtest/gtest.h>
#include <obdemulator/obd_service.h>

namespace ObdEmulator
{
    class ObdServiceTest : public testing::Test, public ObdService
    {
    protected:
        static const uint8_t cService{0x01};

        ObdServiceTest() : ObdService(cService)
        {
        }

    public:
        std::vector<uint8_t> GetResponse(const std::vector<uint8_t> &pid) override
        {
            return std::vector<uint8_t>();
        }
    };

    const uint8_t ObdServiceTest::cService;

    TEST_F(ObdServiceTest, GetServiceMethod)
    {
        EXPECT_EQ(GetService(), cService);
    }
}