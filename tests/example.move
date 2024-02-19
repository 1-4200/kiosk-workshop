#[test_only]
module kiosk_workshop::test_example {
    use sui::test_scenario::{Self as ts, ctx};
    use kiosk_rule::royalty_rule;
    use sui::kiosk;
    use sui::test_scenario::{return_shared, take_from_sender, take_shared};
    use sui::transfer_policy::{TransferPolicy, TransferPolicyCap};
    use sui::coin::Self;
    use sui::sui::SUI;
    use std::option;
    use kiosk_workshop::example::init_for_testing;
    
    const CREATOR: address = @0xA11ce;
    const SELLER: address = @0xB0B;
    const BUYER: address = @0xC0C;
    
    
    #[test]
    /// Test whole process of minting, (setting up TransferPolicy including royalty rules)
    /// placing and purchasing NFTs on Kiosk, and withdrawing balance from Kiosk (and TransferPolicy)
    fun kiosk_flow() {
        let scenario_val = ts::begin(CREATOR);
        let scenario = &mut scenario_val;
        
        init_for_testing(ctx(scenario)); // 1. Publish the contract
        ts::next_tx(scenario, CREATOR); // 2. Setup TransferPolicy for type <T>
        {};
        ts::next_tx(scenario, CREATOR); // 3. Setup a royalty rule on TransferPolicy
        {};
        ts::next_tx(scenario, CREATOR); // 4. Mint NFTs to SELLER
        {};
        ts::next_tx(scenario, SELLER); // 5. Create Kiosk and place and list NFTs on Kiosk
        {};
        ts::next_tx(scenario, BUYER); // 6. Purchase NFTs from Kiosk
        {};
        ts::next_tx(scenario, SELLER); // 7. Withdraw balance from Kiosk
        {};
        ts::next_tx(scenario, CREATOR); // 8. Withdraw balance from TransferPolicy
        {};
        ts::end(scenario_val);
    }
}
