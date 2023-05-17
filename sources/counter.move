module sui_counter::suicounter {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};

  

    struct Counter has key {
        id: UID,
        count: u64,
    }

    fun init(ctx: &mut TxContext) {
        let counter = Counter {
            id: object::new(ctx),
            count: 0,
        };
        transfer::transfer(counter, tx_context::sender(ctx));
    }


    public entry fun count_up(self: &mut Counter) {
        self.count = self.count + 1;
    }

    public entry fun count_down(self: &mut Counter) {
        if(self.count > 0){
            self.count = self.count - 1;
        } else {
            abort 0
        }

    }

}