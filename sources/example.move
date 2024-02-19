module kiosk_workshop::example {
    use sui::object::UID;
    use sui::tx_context::TxContext;
    
    struct NFT {
        id: UID,
    }
    
    fun init(ctx: &mut TxContext) {}
    
    #[test_only] public fun init_for_testing(ctx: &mut TxContext) { init(ctx); }
}
