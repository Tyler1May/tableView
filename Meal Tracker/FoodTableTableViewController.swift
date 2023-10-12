//
//  FoodTableTableViewController.swift
//  Meal Tracker
//
//  Created by Tyler May on 10/11/23.
//

import UIKit

class FoodTableTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let breakfast = Meal(name: "breakfast", food: [
                    Food(name: "Eggs", description: "Fried eggs"),
                    Food(name: "Bacon", description: "Crispy bacon"),
                    Food(name: "Toast", description: "Buttered toast")
                ])
                
                let lunch = Meal(name: "lunch", food: [
                    Food(name: "Sandwich", description: "Ham and cheese sandwich"),
                    Food(name: "Salad", description: "Fresh garden salad"),
                    Food(name: "Chips", description: "Potato chips")
                ])
                
                let dinner = Meal(name: "dinner", food: [
                    Food(name: "Steak", description: "Steak and potatoes"),
                    Food(name: "Vegetables", description: "Seasoned vegetables"),
                    Food(name: "salad", description: "Ceasar salad")
                ])
                
                return [breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let meal = meals[section]
        return meal.food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        // Configure the cell...
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content

        return cell
    }


}
