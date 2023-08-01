//
//  Allert.swift
//  PortfolioMy
//
//  Created by Максим Нурутдинов on 01.08.2023.
//

import UIKit

extension MainViewController {

    func createAc() {
        let ac = UIAlertController(title: "Добавление навыка", message: "Введите название навыка которым вы владеете", preferredStyle: .alert)

        ac.addTextField() { tf in
            tf.placeholder = "Введите название"
        }

        let cancelButtonAction = UIAlertAction(title: "Отмена", style: .cancel)
        let addButtonAction = UIAlertAction(title: "Добавить", style: .default) { action in
            let tf = ac.textFields?.first
            if let newText = tf?.text {
                skillsArray.insert(newText, at: 0)

            }
        }

        ac.addAction(cancelButtonAction)
        ac.addAction(addButtonAction)
        self.present(ac, animated: true)
    }
}
