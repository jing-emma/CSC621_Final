package json;

public class CostItem {
	public String item;
	public String description;
	public double unitPrice;
	public double amount;
	
	public void setItem(String item){
		this.item = item;
	}
	public void setDescription(String description){
		this.description = description;
	}
	public void setUnitPrice(double price){
		this.unitPrice = price;
	}
	public void setAmount(double amount){
		this.amount = amount;
	}
	public String getItem(){
		return item;
	}
	public String getDescription(){
		return description;
	}
	public double getUnitPrice(){
		return unitPrice;
	}
	public double getAmount(){
		return amount;
	}
	
}
