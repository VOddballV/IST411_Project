/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ShippingWebPackage;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Justin
 */
@WebService(serviceName = "ShippingWebService")
public class ShippingWebService {

    /**
     * This Web Service takes a shipping choice from the user and returns the cost based on their choice.
     */
    @WebMethod(operationName = "getShippingCost")
    public int getShippingCost(@WebParam(name = "getShippingCost") int shippingChoice) {
        
        //determines the shipping cost based on the user's choice
        if(shippingChoice == 1){
            return 5;
        }else if(shippingChoice == 2){
            return 10;
        }else /*(shippingChoice == 3) */{
            return 15;
        }
    }
}
