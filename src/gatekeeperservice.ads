with Food_DataStructures;  use Food_DataStructures;
With Stats_FoodDistribution;  use Stats_FoodDistribution;
with CircularQue;

package GateKeeperService is

  task GateKeeper is
      -- accept Food_Packs from interplanetary vesssels.
      entry acceptMessage( newFood: in Food_Pack );
      --entry acceptMessageFront (newFood : in Food_Pack);

      --Allow sals to retrive the repackaged Food_Packs.
      entry retrieveMessage( newFood: out Food_Pack; availableForShipment: out Boolean );

   end GateKeeper;

end GateKeeperService;
