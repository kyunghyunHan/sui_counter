# sui_counter

sui client call --gas-budget 1000 --package {パッケージアドレス} --module {モジュール名} --function {関数名} --args {引数（更新したいオブジェクト ID）}
sui client call --gas-budget 1000 --package 0xbeaf4fe77260005cc6d24ef4336d3a95ace5ead1 --module "my_counter" --function "count_up" --args 0x34dae771bc5304be69aaef49f30c20cf8ad272ff

```
sui move build
```

```
sui move test
```

```
30000000
```
