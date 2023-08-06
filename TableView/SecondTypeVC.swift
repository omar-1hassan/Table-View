//
//  SecondTypeVC.swift
//  TableView
//
//  Created by mac on 05/08/2023.
//

import UIKit

class SecondTypeVC: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var secondTypeTV: UITableView!
    //MARK: - Variables
    var arrOfProducts: [Products] = []
    var cellName = "SecondTVCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        addProducts()
    }
}
//MARK: - Delegate Protocol
extension SecondTypeVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
//MARK: - Data Source Protocol
extension SecondTypeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! SecondTVCell
        let data = arrOfProducts[indexPath.row]
        cell.setUpCell(photo: data.image, details: data.details, price: data.price, description: data.description)
        return cell
    }
}
extension SecondTypeVC{
    func initUI(){
        initTV(tv: secondTypeTV)
    }
    func initTV(tv: UITableView){
        tv.delegate = self
        tv.dataSource = self
        tv.estimatedRowHeight = 200
        tv.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
    }
    func addProducts(){
        
        arrOfProducts.append(Products(image: UIImage(named: "2")!, details: "Dark Cola", price: "EGP 1,400", description: "Cola greenwayi is a small to medium-sized perennial, evergreen tree of 3-25m high. Stem bark is grey-brown or dark brown, rough, flaking with young branches russet to light cinnamon brown or tomentose (densely covered with short, soft, felted hairs) at first, mixed with stellate or bunched hairs which fall readily."))
        arrOfProducts.append(Products(image: UIImage(named: "3")!, details: "Gongrats Bouquet", price: "EGP 1,190", description: "Female flowers with sessile ovary, densely stellate-pubescent, about 2 or 3mm wide, with a ring of rudimentary stamens around base, carpels 4-5 or less by abortion, orange yellow to deep orange. Flowering time is from October to January."))
        arrOfProducts.append(Products(image: UIImage(named: "4")!, details: "Light Bink Bouquet", price: "EGP 1000", description: "Inflorescences are one-flowered, axillary, solitary or fascicled and crowded on branchelets between the leaves. Flowers are unisexual, rarely bisexual, about 5×12mm, coloured by dark rusty brown, dense hairs, in leaf axial, in tight clusters along woody stems. Floral pedicels are jointed near the base, arising from sessile imbricating bracts which are 1.5-3.5mm long, without petals, sepals covered with rusty hairs, pedicels 7-20mm long, densely stellate-purbescent, hairs dark to light brown short or long, calyx 4-6-lobed almost to the base at flowering time, dorsally stellate-pubescent (with star-shaped hairs). Male flowers with staminal tubes about 2.5-4.5mm long, densely pubescent to subglabrous, anthers up to 8 in one row, sessile in a ring around the apex of stamina tube."))
        arrOfProducts.append(Products(image: UIImage(named: "6")!, details: "Happy Birth Day Bouquet", price: "EGP 1,200", description: "Stipules are subulate-lanceolate to linear, 3-6mm long, dark to light brown or grey tomentose, and fall off early. Leaves simple, alternate, elliptic to oblanceolate, up to 270×75mm, glabrous at maturity, dark green above, paler green below, drooping, tapering at apex and base, margins entire, petiole up to 10-65mm long, with tomentose apical swelling below leaf base (pulvinus)."))
        arrOfProducts.append(Products(image: UIImage(named: "8")!, details: "Graduation Vase", price: "EGP 1,299", description: "They are often used in floral arrangements as a symbol of innocence and purity. They can also be used to express sympathy or condolences. White baby roses typically have a light, delicate fragrance and are popular for use in bridal bouquets and other special occasion."))
        arrOfProducts.append(Products(image: UIImage(named: "9")!, details: "Soul Beauty Bouquet", price: "EGP 1,400", description: "Summer Rose' is strong but graceful, becoming increasingly full, vigorous and floriferous with each year. The intense blooms are carried on long stems, providing lovely cut flowers for bouquets. Height: 60cm (24in)."))
        
        arrOfProducts.append(Products(image: UIImage(named: "13")!, details: "Summer Bouquet", price: "EGP 1,299", description: "Their stems are usually prickly and their glossy, green leaves have toothed edges. Rose flowers vary in size and shape. They burst with colours ranging from pastel pink, peach, and cream, to vibrant yellow, orange, and red. Many roses are fragrant, and some produce berry-like fruits called hips"))
        arrOfProducts.append(Products(image: UIImage(named: "15")!, details: "White Baby Roses Bouquet", price: "EGP 799", description: "White roses are said to represent purity, chastity, and innocence. The white color is generally associated with marriage and new beginnings, hence why some brides choose an arrangement of white roses for their bridal bouquet."))
        arrOfProducts.append(Products(image: UIImage(named: "16")!, details: "It's A Boy Bouquet", price: "EGP 1,299", description: "To describe a beautiful flower, you can use the adjectives like aromatic, elegant, fragrant, pretty, radiant, ravishing, etc."))
        arrOfProducts.append(Products(image: UIImage(named: "17")!, details: "White Cymbidium Bouquet", price: "EGP 1,750", description: "The Meaning of White Roses and Their Historical Significance. Traditionally, white roses are a popular choice for weddings. Because they represent purity, the flower is a wonderful option for marriage celebrations. Besides purity, white roses also represent youthfulness, innocence, young love, and loyalty."))
        arrOfProducts.append(Products(image: UIImage(named: "19")!, details: "Best Dad Love", price: "EGP 1,299", description: "Their stems are usually prickly and their glossy, green leaves have toothed edges. Rose flowers vary in size and shape. They burst with colours ranging from pastel pink, peach, and cream, to vibrant yellow, orange, and red. Many roses are fragrant, and some produce berry-like fruits called hips."))
        arrOfProducts.append(Products(image: UIImage(named: "20")!, details: "Happy Birthday Spring Vase", price: "EGP 1,400", description: "Their stems are usually prickly and their glossy, green leaves have toothed edges. Rose flowers vary in size and shape. They burst with colours ranging from pastel pink, peach, and cream, to vibrant yellow, orange, and red. Many roses are fragrant, and some produce berry-like fruits called hips."))
        arrOfProducts.append(Products(image: UIImage(named: "22")!, details: "White Cymbidium Bouquet", price: "EGP 999", description: "Examples of deeper meanings lie within the language of flowers, and how a rose may have a different meaning in arrangements. Examples of common meanings of different coloured roses are: true love (red), mystery (blue), innocence or purity (white), death (black), friendship (yellow), and passion (orange)."))
        arrOfProducts.append(Products(image: UIImage(named: "5")!, details: "Get Well Soon Bouquet", price: "EGP 999", description: "Express romantic love: Red roses have become synonymous with romantic love due to their striking appearance and captivating fragrance. The deep red color of the petals symbolizes the intensity of passion and romantic desire, making red roses an ideal choice for expressing profound romantic feelings."))
        arrOfProducts.append(Products(image: UIImage(named: "7")!, details: "Bouquet Of Spring Color", price: "EGP 2,199", description: "To describe a beautiful flower, you can use the adjectives like aromatic, elegant, fragrant, pretty, radiant, ravishing, etc."))
        arrOfProducts.append(Products(image: UIImage(named: "11")!, details: "Summer Bink Bouquet", price: "EGP 1,700", description: "Pink roses typically symbolise admiration, happiness, and love. More subtle than the traditional bold red rose, pink roses are often used to signify a strong friendship or the love between family members. Pink roses can also represent admiration and respect towards someone close to you."))
        arrOfProducts.append(Products(image: UIImage(named: "18")!, details: "Super Hero Eternal Amour", price: "EGP 1,200", description: "The colour red is often seen as a symbol of romantic love, passionate affection, and desire. A red rose is the symbol of eternal love and passion. The meaning of red roses can stand for true love, courage, respect, or even congratulations."))
        arrOfProducts.append(Products(image: UIImage(named: "21")!, details: "Big Love Vase", price: "EGP 1,299", description: "To describe a beautiful flower, you can use the adjectives like aromatic, elegant, fragrant, pretty, radiant, ravishing, etc."))
        
        arrOfProducts.append(Products(image: UIImage(named: "12")!, details: "Peach Chrysanthemum Bouquet", price: "EGP 599", description: "Pink roses typically symbolise admiration, happiness, and love. More subtle than the traditional bold red rose, pink roses are often used to signify a strong friendship or the love between family members. Pink roses can also represent admiration and respect towards someone close to you."))
        arrOfProducts.append(Products(image: UIImage(named: "10")!, details: "Red Roses Vase", price: "EGP 1,299", description: "The colour red is often seen as a symbol of romantic love, passionate affection, and desire. A red rose is the symbol of eternal love and passion. The meaning of red roses can stand for true love, courage, respect, or even congratulations."))
        arrOfProducts.append(Products(image: UIImage(named: "14")!, details: "Best Dad Forest Fantasy", price: "EGP 899", description: "Their stems are usually prickly and their glossy, green leaves have toothed edges. Rose flowers vary in size and shape. They burst with colours ranging from pastel pink, peach, and cream, to vibrant yellow, orange, and red. Many roses are fragrant, and some produce berry-like fruits called hips."))
        arrOfProducts.append(Products(image: UIImage(named: "23")!, details: "Pink Sun Flower Vase", price: "EGP 20000", description: "A light rosy tone is often associated with femininity, so, naturally, the pink rose meaning is that of grace and sweetness. Other interpretations include gentleness, appreciation, joy, thankfulness, and elegance. The variety of meanings make giving pink roses appropriate for so many occasions."))
        arrOfProducts.append(Products(image: UIImage(named: "1")!, details: "PinK Heart Roses", price: "EGP 1,299", description: "To describe a beautiful flower, you can use the adjectives like aromatic, elegant, fragrant, pretty, radiant, ravishing, etc."))
    }
}
