#include <gtest/gtest.h>
#include <obdemulator/obd_emulator.h>
#include "./helpers/loopback_communication_layer.h"
#include "./helpers/dummy_obd_service.h"

namespace ObdEmulator
{
    class ObdEmulatorTest : public testing::Test
    {
    protected:
        const uint32_t cQueryBroadcastId{0x7df};
        const bool cIsExtended{false};
        const bool cIsRtr{false};
        const uint8_t cQuerySize{2};
        const uint8_t cResponseServiceOfsset{0x40};
        const size_t cResponseServiceIndex{1};
        const size_t cResponseDataIndex{2};

        Helpers::LoopbackCommunicationLayer mCommunicationLayer;
        Helpers::DummyObdService mObdService;
        ObdEmulator mObdEmulator;

        ObdEmulatorTest() : mObdEmulator(&mCommunicationLayer, {&mObdService})
        {
        }

        void SetUp() override
        {
            mObdEmulator.Start();
        }

        void TearDown() override
        {
            mObdEmulator.Stop();
        }
    };

    TEST_F(ObdEmulatorTest, LoopbackScenario)
    {
        CanFrame _query(
            cQueryBroadcastId,
            cIsExtended,
            cIsRtr,
            {cQuerySize, Helpers::DummyObdService::cService, Helpers::DummyObdService::cVehicleSpeedPid});

        CanFrame _response{mCommunicationLayer.Send(_query)};

        uint8_t _actualService{_response.GetData().at(cResponseServiceIndex)};
        int _expectedServiceInt{Helpers::DummyObdService::cService + cResponseServiceOfsset};
        auto _expectedService{static_cast<uint8_t>(_expectedServiceInt)};
        EXPECT_EQ(_actualService, _expectedService);

        uint8_t _actualSpeed{_response.GetData().at(cResponseDataIndex)};
        EXPECT_EQ(_actualSpeed, Helpers::DummyObdService::cVehicleSpeed);
    }
}