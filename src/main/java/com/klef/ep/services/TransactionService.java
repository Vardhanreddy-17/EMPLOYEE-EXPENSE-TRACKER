package com.klef.ep.services;

import java.util.List;

import com.klef.ep.models.Transaction;
import com.klef.ep.models.User;

public interface TransactionService 
{
	public String addTransaction(Transaction tr);
	public List<Transaction> viewAllTransactions(User us);
	public long viewExpenses(User us);
	public long viewIncome(User us);
}
