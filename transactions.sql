--Bank Accounts Table
CREATE TABLE bank_accounts (
    account_id INT PRIMARY KEY IDENTITY(1,1),
    account_holder VARCHAR(100),
    balance MONEY CHECK (balance >= 0)
);

INSERT INTO bank_accounts (account_holder, balance) VALUES
('Zajn', 5000), ('Hamza', 3000);

---1) Transfer Rs. 500 from Account 1 to 2
BEGIN TRANSACTION;
BEGIN TRY
 UPDATE bank_accounts 
 SET balance = balance - 500 
 WHERE account_id = 1;

 UPDATE bank_accounts 
 SET balance = balance + 500 
 WHERE account_id = 2;
 COMMIT;
END TRY
BEGIN CATCH
  ROLLBACK;
END CATCH

--Logs Table
CREATE TABLE logs (
    log_id INT PRIMARY KEY IDENTITY(1,1),
    action VARCHAR(255),
    time DATETIME DEFAULT GETDATE()
);

--1) Insert student + log it
BEGIN TRANSACTION;

INSERT INTO students (stu_name, age, phone_number, department_id)
VALUES ('Haris', 20, '03112223344', 3);

IF @@ERROR <> 0
BEGIN
    ROLLBACK;
    RETURN;
END

INSERT INTO logs (action, time)
VALUES ('Inserted Haris', GETDATE());

IF @@ERROR <> 0
    ROLLBACK;
ELSE
    COMMIT;



