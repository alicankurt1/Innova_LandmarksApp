//
//  LandmarksSingleton.swift
//  Innova_LandmarksApp
//
//  Created by Alican Kurt on 30.12.2021.
//

import Foundation
import UIKit

class LandmarksSingleton{
    public static let shared = LandmarksSingleton()
    
    public var land: LandDetails?
    public let landMarks: [LandDetails] = [
        LandDetails(landImage: UIImage(named: "antartika")!, name: "Antartika", country: "Antartika", description: "Antarktika'nın yüzde 99'u buzla kaplı olsa da, manzara hala şaşırtıcı derecede çeşitli olmayı başarıyor. Gerçeküstü mavi buzullar, aktif yanardağlar görenleri hayran bırakmayı başarıyor."),
        LandDetails(landImage: UIImage(named: "angel_waterfall")!, name: "Angel Şelalesi", country: "Venezuela", description: "Venezuela, dünyanın en yüksek şelalesi olan Angel Şelalerine ev sahipliği yapıyor. UNESCO koruması altındaki Canaima Milli Parkı'nda bulunan 3,212 metrelik Angel Şelaleleri şelaleleri. ülkenin en popüler cazibe merkezi olma özelliği taşıyor."),
        LandDetails(landImage: UIImage(named: "bambu")!, name: "Araşiyama Bambu Korusu", country: "Japonya ", description: "Burada gezerken duyulacak olan sesler olağanüstü bir güzelliğe sahip. Ancak bu seslerin kimi insanlarda farklı reaksiyonlara da yol açtığı görülmüştür. Öyle ki ormandaki sesler nedeniyle ruh sağlığı bozulanların varlığı dahi kayıtlara geçmiş."),
        LandDetails(landImage: UIImage(named: "antilop_kanyonu")!, name: "Antilop Kanyonu", country: "ABD", description: "Antilop Kanyonu, Amerika'nın güneybatısındaki doğa harikası kanyondur.. Navajo suyun kayaların arasından aktığı yer anlamına gelir ve kanyonun erozyon yoluyla oluşumuna bir atıftır. Kaya oluşumları arasındaki dar, dalgalı boşluklar, güneş ışığı çizgili taştan süzüldüğünde canlı desenler oluşturur. "),
        LandDetails(landImage: UIImage(named: "atacama_colu")!, name: "Atacama Çölü", country: "Şili", description: "Atacama Çölü, batısında Büyük Okyanus'un bulunduğu Şili'nin dünyaca ünlü bir çölüdür. Neredeyse yağmurun hiç yağmadığı bu çöl, NASA tarafından da uzay araçlarının test edildiği yer olarak biliniyor."),
        LandDetails(landImage: UIImage(named: "Boababs")!, name: "Boababs", country: "Madagaskar", description: "Afrika'nın ve dünyanın en büyük adalarından biri olan Madagaskar, doğal yaşantısı kadar tabiatıyla da büyük bir zenginliğe ev sahipliği yapmakta. "),
        LandDetails(landImage: UIImage(named: "azor_adasi")!, name: "Azor Adaları", country: "Portekiz", description: "Atlas Okyanusu'nde yer alan Azor takım adaları, Amerika keşfedilene kadar uzun bir süre Avrupalıların Batı'da ulaştıkları en uç nokta olarak kaldı. Gerçek bir doğa harikası olan Azorlar günümüzde turizm açısından da oldukça gelişmiştir."),
        LandDetails(landImage: UIImage(named: "banf_ulusal_parki")!, name: "Banff Ulusal Parkı", country: "Kanada", description: "Kanada, çok sayıda doğa güzelliğine de ev sahipliği yapıyor. Uçsuz bucaksız ormanları, dağları ve buzullarıyla doğa tutkunlarının en gözde rotalarından biri olan Kanada'nın batı kısmındaki Alberta eyaletinde bulunan Banff Ulusal Parkı, ülkenin en önemli tabiat zenginliklerinden biri."),
        LandDetails(landImage: UIImage(named: "boracay")!, name: "Boracay", country: "Filipinler", description: "Muhteşem kıyı şeritleri ve romantik gün batımları ile Boracay'ın insanlar tarafından neden dünyanın en iyi adalarından biri olarak seçildiğini anlamak çok kolay. Ne yazık ki bu doğa harikası yer son dönemlerde aşırı kalabalıklaştı. Bu da beraberinden çevre sorunlarını getirdi."),
        LandDetails(landImage: UIImage(named: "boulders_kumsali")!, name: "Boulders Kumsalı", country: "Afrika", description: "False Bay Sahil şeridinde, Masa Dağı'nın yaklaşık 27 km güneyinde yer alan Boulders Kumsalı, Cape Town'ın parlak mavi sular, granit kayalar ve hatta penguenleriyle meşhur güzel manzaralarını sergiliyor."),
        LandDetails(landImage: UIImage(named: "cabo_san")!, name: "Cabo San Lucas", country: "Meksika", description: "67 milli parka, 6 bin kilometreden fazla kıyı şeridine ve çöllerden karla kaplı yanardağlara kadar uzanan manzaralara ev sahipliği yapan Meksika, bahar tatili klişelerinden çok daha fazlasıdır. Cabo San Lucas."),
        LandDetails(landImage: UIImage(named: "grand_kanyon")!, name: "Grand Kanyon", country: "ABD", description: "Genellikle Dünyanın Yedi Doğa Harikasından biri olarak adlandırılan Büyük Kanyon Ulusal Parkı, bir nedenden ötürü çoğu gezginin listesinde yer alıyor. Devasa bir coğrafyaya yayılan Grand Kanyon, Hollywood filmlerinin de sıklıkla çekildiği yerler arasında bulunuyor."),
        LandDetails(landImage: UIImage(named: "bariyer_resifleri")!, name: "Büyük Bariyer Resifleri", country: "Avustralya", description: "Dünya üzerindeki en büyük canlı varlık olan Great Barrier Reef uzaydan görülebilmesine rağmen, en iyi görüş noktası, her yıl ziyarete gelen hevesli şnorkelle yüzücülere ve dalgıçlara aittir."),
        LandDetails(landImage: UIImage(named: "gronland")!, name: "Grönland", country: "Danimarka", description: "Grönland, günümüzde Danimarka'ya bağlı bir yer. Dünyanın en büyük adası olan Grönland'ın manası yeşil toprak olsa da bölge yılın neredeyse tamamını kar ve buzlarla kaplı geçiriyor."),
        LandDetails(landImage: UIImage(named: "skye")!, name: "Skye Adası", country: "İskoçya", description: "Sonsuz dalgalı tepeleriyle, büyülü Skye Adası, hayallerin yapıldığı şeydir. Buradaki doğa zamansız olsa da adada tamamen modern bir yemek sahnesi de var."),
        LandDetails(landImage: UIImage(named: "baykal")!, name: "Baykal Gölü", country: "Rusya", description: "Baykal Gölü, Rusya'nın uzak köşesinde, Sibirya'da bulunan bir doğa harikası. Dünyanın bilinen en eski ve derin gölü olan Baykal, kış aylarında tamamen donmakta. Türklerin tarih sahnesine çıktığı ilk yerlerden biri olan Baykal Gölü'nün de böyle bir yönü var. "),
        LandDetails(landImage: UIImage(named: "kapadokya")!, name: "Kapadokya", country: "Türkiye", description: "Türkiye'de tüm şehirlerin kayalara oyulduğu bir bölge olan Kapadokya, başlı başına inanılmaz bir doğa olayı. Ancak ne zaman sıcak hava balonları gökyüzünü kaplasa ki çoğu gün doğarken havalanmaya başlar, güzellik seviyesi kelimenin tam anlamıyla doruklara ulaşıyor."),
        LandDetails(landImage: UIImage(named: "pamukkale")!, name: "Pamukkale", country: "Türkiye", description: "Pamukkale'nin 17 katmanlı havuzları, kaplıcalar kadar güzeldir. Bir tür kireçtaşı olan beyaz traverten yığınlar Denizli şehrine bakar ve 34 derecelik suları gök mavisi Ege gökyüzünü mükemmel bir şekilde yansıtır.")




    ]
    
}
