 - id  | tx_id | type   | account | amount | posting_time
 - 1   | 1     | credit | Cash    | 100.00 | 123894028934
 - 2   | 1     | debit  | Rent    | 100.00 | 123894028934
 
 
 - https://medium.com/@RobertKhou/double-entry-accounting-in-a-relational-database-2b7838a5d7f8
 
### 日志Journal
系统记账需要的事实日志如：支付发生、注册用户、创建店铺

| 日志UUID          | 日志事件类型       | 日志事件内容                  |创建日期  |流水创建标记  |流水创建日期 |
| :--------------- |:------------------| :---------------------------|--------:|:----------:|----------:|
| journal-uuid-001 | PAYMENT_CREATED   | {payment created event json}|20180101 |    Y       |20180101   |
| journal-uuid-002 | USER_VERIFIED     | {user register event json}  |20180101 |    N       |19000101   |
| journal-uuid-003 | STORE_VERIFIED    | {store created event json}  |20180102 |    N       |19000101   |
  
### 账户Account
每个用户拥有如下账户：CASH现金、POINTS积分、REDPACK红包、COUPON优惠券

| 用户编号UUID   | 账户类型  | 账户编号UUID        | 创建日期 | 
| :------------ |:---------| :------------------|--------:|
| user-uuid-001 | CASH     | account-uuid-101   |20180101 |
| user-uuid-001 | POINTS   | account-uuid-102   |20180101 |
| user-uuid-002 | CASH     | account-uuid-103   |20180102 |
| user-uuid-002 | POINTS   | account-uuid-104   |20180102 |
 
 
### 账户流水Postings
根据系统记账需要的事实计算奖励积分、转换积分，记录在相应账户流水里。

| 流水编号UUID      | 用户编号UUID     | 账户编号UUID        |   日志编号UUID    | 数量   | 创建日期  |
| :--------------- |:----------------| :------------------|-----------------:|-------:|--------:|
| posting-uuid-001 | user-uuid-001   | account-uuid-101   | journal-uuid-001 |  -30   |20180101 |
| posting-uuid-002 | user-uuid-002   | account-uuid-102   | journal-uuid-001 |   30   |20180101 |
| posting-uuid-003 | user-uuid-003   | account-uuid-103   | journal-uuid-001 |   20   |20180101 |
| posting-uuid-004 | user-uuid-004   | account-uuid-104   | journal-uuid-001 |  -20   |20180101 |
 
### 账户余额Balance
每个账户汇总信息：前期余额，前期日期，当期变化，当期日期，当期余额

| 账户编号UUID      | 前期余额  | 前期日期  | 当期变化 | 当期日期  | 当期余额 |
| :--------------- |:---------| :--------|-------:|---------:|--------:|
| account-uuid-001 | 100      | 20180101 |   20   | 20180101 |  120    |
| account-uuid-002 | 100      | 20180101 |   -20  | 20180101 |   80    |
| account-uuid-003 | 100      | 20180101 |   30   | 20180101 |  130    |
| account-uuid-004 | 120      | 20180101 |   50   | 20180101 |  170    |
 
