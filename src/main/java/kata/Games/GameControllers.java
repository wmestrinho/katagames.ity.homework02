package kata.Games;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by WagnerMestrinho on 3/20/17.
 */
@Controller
public class GameControllers {
    /*@RequestMapping(value = "/", method = RequestMethod.GET)
        public String index() {
        return "redirect:/index.jsp";}*/

    @RequestMapping(value ="/speeding", method = RequestMethod.POST)
    public String speedingCheck(Model myModel, @RequestParam Integer speed, @RequestParam(required = false) Boolean bDay) {

        String msg = "";
        if (bDay == null) {
            bDay = false;
        }
        if (bDay) {
            if (speed <= 65) {
                msg = "THIS IS ONLY A WARNING!";
            }
            if (speed > 65 && speed <= 85) {
                msg = "$50 TICKET";
            }
            if (speed > 85) {
                msg = "$200 TICKET";
                    }
        } else {

            if (speed <= 60) {
                msg = "THIS IS ONLY A WARNING!";
                    }
            if (speed <= 60 && speed <= 80) {
                msg = "TICKET - $50";
                    }
            if (speed > 80) {
                msg = "TICKET - $200";
                    }
                }
                myModel.addAttribute("msg", msg);
                return "forward:/index.jsp";
            }
        @RequestMapping(value ="/sortaSum", method = RequestMethod.POST)
                public String sumGame(Model myModel, @RequestParam Integer first, @RequestParam Integer second){
                    String msg1 = "Your Total is" +sortasum(first, second);
                    myModel.addAttribute("msg1", msg1);
                    return "forward:/index.jsp";
        }
            private Integer sortasum (Integer a, Integer b){
                    Integer result = a + b;
                    if(result >= 10 && result <=20){
                        result = 20;
                    }
                    return result;
    }
        @RequestMapping(value ="/blackjack", method = RequestMethod.POST)
        public String BlackJackGame(Model myModel, @RequestParam String dealer, @RequestParam String player){

                String msg2 = "";
                String [] dealersCards = dealer.split(",");
                String [] playerCards = player.split(",");
                Integer dealerSum = sumCards(dealersCards);
                Integer playerSum = sumCards(playerCards);

                if (playerSum == 21 && dealerSum != 21)
                    msg2 = "Player Blackjack";
                else if (dealerSum == 21 && playerSum != 21)
                    msg2 = "Dealer Blackjack";
                else
                {
                    if(playerSum >= dealerSum)
                        msg2 = "Player Wins!";
                    else
                        msg2 = "Dealer Wins!";

                    if (dealerSum > 21 && playerSum < 21)
                        msg2 = "Player Wins!";
                    else if (playerSum > 21 && dealerSum < 21)
                        msg2 = "Dealer Wins!";
                }

                myModel.addAttribute("msg2", msg2);
                return "forward:/index.jsp";
        }

        private Integer sumCards (String [] cards){
            Integer sum = 0;
            for(int i=0; i< cards.length;i++){
                sum +=Integer.parseInt(cards[i]);
            }
            return sum;
        }
}

