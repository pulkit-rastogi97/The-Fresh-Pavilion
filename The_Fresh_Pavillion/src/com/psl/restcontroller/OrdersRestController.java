package com.psl.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.psl.dao.OrderDao;
import com.psl.entity.Orders;

@RestController
@RequestMapping("/orders")
public class OrdersRestController {

    @Autowired
    private OrderDao orderDao;
    
    @RequestMapping(value = "/order", method = RequestMethod.GET, headers = "Accept=application/json")
    public List<Orders> getAllOrders(){
        return orderDao.getAllOrders();
    }
    
    @RequestMapping(value = "/order", method = RequestMethod.POST)
    public Orders saveOrder(@RequestBody Orders orders){
        orderDao.saveOrder(orders);
        return orders;
    }
    
}