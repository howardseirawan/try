// SPDX-License-Identifier: MIT


%lang starknet
//3
@contract_interface
namespace ICounter {
    func get_count() -> (res: felt).
    func increment().
    func decrement().
end

@storage_var
func count() -> (res: felt) {
}

@external
func increment() {
    let (current_count) = count.read()
    count.write(current_count + 1)
}

@external
func decrement() {
    let (current_count) = count.read()
    count.write(current_count - 1)
}

@view
func get_count() -> (res: felt) {
    let (current_count) = count.read()
    return (current_count,)
}
