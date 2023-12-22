package com.klef.ep.services;

import com.klef.ep.models.Transaction;
import com.klef.ep.models.User;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class TransactionServiceImpl implements TransactionService
{
	public String addTransaction(Transaction tr) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();
		em.persist(tr); // insert operation
		em.getTransaction().commit();

		em.close();
		emf.close();

		return "Record Inserted Successfully";
	}

	
	public List<Transaction> viewAllTransactions(User us) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();
     	  
        em.getTransaction().begin();
        
        Query qry = em.createQuery("   select t from Transaction t where user_trans_id=? "); // e is an alias of Employee class
        qry.setParameter(1, us);
        
        List<Transaction> trlist = qry.getResultList();
        em.close();
  	    emf.close();
  	    
  	    return trlist;
	}


	@Override
	public long viewExpenses(User us) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();
     	  
        em.getTransaction().begin();
        
        Query qry = em.createQuery("   select sum(transamount) from Transaction t where user_trans_id=? and transtype='expense' "); // e is an alias of Employee class
        qry.setParameter(1, us);
        
        long exp=0;
        
        if(qry.getResultList().size() > 0) 
	     {
	    	    exp = (long) qry.getSingleResult();
	     }
        em.close();
  	    emf.close();
  	    
  	    return exp;
	}


	public long viewIncome(User us) 
	{
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();
     	  
        em.getTransaction().begin();
        
        Query qry = em.createQuery("   select sum(transamount) from Transaction t where user_trans_id=? and transtype='income' "); // e is an alias of Employee class
        qry.setParameter(1, us);
        
        long inc=0;
        
        if(qry.getResultList().size() > 0) 
	     {
	    	    inc = (long) qry.getSingleResult();
	     }
        em.close();
  	    emf.close();
  	    
  	    return inc;
	}

}
