//
//  Model.swift
//  iOS12-HW14
//
//  Created by Ден Майшев on 25.03.2024.
//

import UIKit

struct CompositionalModel: Hashable {
    var mainTitle: String
    var description: String
    var image: UIImage?
}

struct CompositionalSection {
    let title: String
    let buttonIsHidden: Bool?
    let model: [CompositionalModel]
}

extension CompositionalSection {
    static let sections: [CompositionalSection] = [
        CompositionalSection(title: "Мои альбомы", buttonIsHidden: false, model: [
            CompositionalModel(mainTitle: "Недавние",
                               description: "122",
                               image: UIImage(named: "cat")),
            CompositionalModel(mainTitle: "Sleep if U Can",
                               description: "1",
                               image: UIImage(named: "stumpIsClear")),
            CompositionalModel(mainTitle: "Избранное",
                               description: "23",
                               image: UIImage(named: "settle")),
            CompositionalModel(mainTitle: "Instagram",
                               description: "0",
                               image: UIImage(named: "glassAndCat")),
            CompositionalModel(mainTitle: "VK",
                               description: "0",
                               image: UIImage(named: "catSuspicious")),
            CompositionalModel(mainTitle: "InShot",
                               description: "5",
                               image: UIImage(named: "catBun")),
            CompositionalModel(mainTitle: "WhatsApp",
                               description: "1",
                               image: UIImage(named: "cat"))
        ]),
        CompositionalSection(title: "Люди и места", buttonIsHidden: true, model: [
            CompositionalModel(mainTitle: "Люди", 
                               description: "3",
                               image: UIImage(named: "glassAndCat")),
            CompositionalModel(mainTitle: "Места",
                               description: "1",
                               image: UIImage(named: "catSuspicious"))
        ]),
        CompositionalSection(title: "Типы медиафайлов",buttonIsHidden: true, model: [
            CompositionalModel(mainTitle: "Видео",
                               description: "31", 
                               image: UIImage(systemName: "video")),
            CompositionalModel(mainTitle: "Селфи",
                               description: "3",
                               image: UIImage(systemName: "person.crop.square")),
            CompositionalModel(mainTitle: "Фото Live Photo",
                               description: "30",
                               image: UIImage(systemName: "livephoto")),
            CompositionalModel(mainTitle: "Замедленно",
                               description: "2",
                               image: UIImage(systemName: "timelapse")),
            CompositionalModel(mainTitle: "Снимки экрана",
                               description: "7",
                               image: UIImage(systemName: "square.stack.3d.down.right"))
        ]),
        CompositionalSection(title: "Другое", buttonIsHidden: true, model: [
            CompositionalModel(mainTitle: "Импортированные",
                               description: "0",
                               image: UIImage(systemName: "square.and.arrow.down")),
            CompositionalModel(mainTitle: "Скрытые",
                               description: "0",
                               image: UIImage(systemName: "square.on.square")),
            CompositionalModel(mainTitle: "Удаленные",
                               description: "0",
                               image: UIImage(systemName: "trash"))
        ])
    ]
}
