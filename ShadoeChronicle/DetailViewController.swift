//
//  DetailViewController.swift
//  shadow_chronicle
//
//  Created by 佐野文哉 on 2018/09/16.
//  Copyright © 2018年 Jenove_ze. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
        //UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        
        //キーを指定して保存していた値を取り出す
        if let detail = detailItem {
            let deckName = detail.description
            //エルフ
            if let value = userDefaults.string(forKey: deckName + "ElfeSenWin") {
                ElfeSenWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "ElfeSenLose") {
                ElfeSenLoseButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "ElfeKouWin") {
                ElfeKouWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "ElfeKouLose") {
                ElfeKouLoseButtonOutlet.setTitle(value, for: .normal)
            }
            WinperDidLoad(SenWin: ElfeSenWinButtonOutlet, SenLose: ElfeSenLoseButtonOutlet, KouWin: ElfeKouWinButtonOutlet, KouLose: ElfeKouLoseButtonOutlet, SenLabel: ElfeSenWinperLabel, KouLabel: ElfeKouWinperLabel, TotalLabel: ElfeTotalWinper)
            //ロイヤル
            if let value = userDefaults.string(forKey: deckName + "RoyalSenWin") {
                RoyalSenWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "RoyalSenLose") {
                RoyalSenLoseButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "RoyalKouWin") {
                RoyalKouWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "RoyalKouLose") {
                RoyalKouLoseButtonOutlet.setTitle(value, for: .normal)
            }
            WinperDidLoad(SenWin: RoyalSenWinButtonOutlet, SenLose: RoyalSenLoseButtonOutlet, KouWin: RoyalKouWinButtonOutlet, KouLose: RoyalKouLoseButtonOutlet, SenLabel: RoyalSenWinperLabel, KouLabel: RoyalKouWinperLabel, TotalLabel: RoyalTotalWinper)
            //ウィッチ
            if let value = userDefaults.string(forKey: deckName + "WitchSenWin") {
                WitchSenWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "WitchSenLose") {
                WitchSenLoseButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "WitchKouWin") {
                WitchKouWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "WitchKouLose") {
                WitchKouLoseButtonOutlet.setTitle(value, for: .normal)
            }
            WinperDidLoad(SenWin: WitchSenWinButtonOutlet, SenLose: WitchSenLoseButtonOutlet, KouWin: WitchKouWinButtonOutlet, KouLose: WitchKouLoseButtonOutlet, SenLabel: WitchSenWinperLabel, KouLabel: WitchKouWinperLabel, TotalLabel: WitchTotalWinper)
            //ドラゴン
            if let value = userDefaults.string(forKey: deckName + "DragonSenWin") {
                DragonSenWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "DragonSenLose") {
                DragonSenLoseButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "DragonKouWin") {
                DragonKouWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "DragonKouLose") {
                DragonKouLoseButtonOutlet.setTitle(value, for: .normal)
            }
            WinperDidLoad(SenWin: DragonSenWinButtonOutlet, SenLose: DragonSenLoseButtonOutlet, KouWin: DragonKouWinButtonOutlet, KouLose: DragonKouLoseButtonOutlet, SenLabel: DragonSenWinperLabel, KouLabel: DragonKouWinperLabel, TotalLabel: DragonTotalWinper)
            //ネクロ
            if let value = userDefaults.string(forKey: deckName + "NecroSenWin") {
                NecroSenWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "NecroSenLose") {
                NecroSenLoseButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "NecroKouWin") {
                NecroKouWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "NecroKouLose") {
                NecroKouLoseButtonOutlet.setTitle(value, for: .normal)
            }
            WinperDidLoad(SenWin: NecroSenWinButtonOutlet, SenLose: NecroSenLoseButtonOutlet, KouWin: NecroKouWinButtonOutlet, KouLose: NecroKouLoseButtonOutlet, SenLabel: NecroSenWinperLabel, KouLabel: NecroKouWinperLabel, TotalLabel: NecroTotalWinper)
            //ヴァンパイア
            if let value = userDefaults.string(forKey: deckName + "VampSenWin") {
                VampSenWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "VampSenLose") {
                VampSenLoseButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "VampKouWin") {
                VampKouWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "VampKouLose") {
                VampKouLoseButtonOutlet.setTitle(value, for: .normal)
            }
            WinperDidLoad(SenWin: VampSenWinButtonOutlet, SenLose: VampSenLoseButtonOutlet, KouWin: VampKouWinButtonOutlet, KouLose: VampKouLoseButtonOutlet, SenLabel: VampSenWinperLabel, KouLabel: VampKouWinperLabel, TotalLabel: VampTotalWinper)
            //ビショップ
            if let value = userDefaults.string(forKey: deckName + "BishopSenWin") {
                BishopSenWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "BishopSenLose") {
                BishopSenLoseButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "BishopKouWin") {
                BishopKouWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "BishopKouLose") {
                BishopKouLoseButtonOutlet.setTitle(value, for: .normal)
            }
            WinperDidLoad(SenWin: BishopSenWinButtonOutlet, SenLose: BishopSenLoseButtonOutlet, KouWin: BishopKouWinButtonOutlet, KouLose: BishopKouLoseButtonOutlet, SenLabel: BishopSenWinperLabel, KouLabel: BishopKouWinperLabel, TotalLabel: BishopTotalWinper)
            //ネメシス
            if let value = userDefaults.string(forKey: deckName + "NemesisSenWin") {
                NemesisSenWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "NemesisSenLose") {
                NemesisSenLoseButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "NemesisKouWin") {
                NemesisKouWinButtonOutlet.setTitle(value, for: .normal)
            }
            if let value = userDefaults.string(forKey: deckName + "NemesisKouLose") {
                NemesisKouLoseButtonOutlet.setTitle(value, for: .normal)
            }
            WinperDidLoad(SenWin: NemesisSenWinButtonOutlet, SenLose: NemesisSenLoseButtonOutlet, KouWin: NemesisKouWinButtonOutlet, KouLose: NemesisKouLoseButtonOutlet, SenLabel: NemesisSenWinperLabel, KouLabel: NemesisKouWinperLabel, TotalLabel: NemesisTotalWinper)
            //SenWin
            AllDidLoad(B1: ElfeSenWinButtonOutlet, B2: RoyalSenWinButtonOutlet, B3: WitchSenWinButtonOutlet, B4: DragonSenWinButtonOutlet, B5: NecroSenWinButtonOutlet, B6: VampSenWinButtonOutlet, B7: BishopSenWinButtonOutlet, B8: NemesisSenWinButtonOutlet, AllLabel: AllSenWinLabel)
            //SenLose
            AllDidLoad(B1: ElfeSenLoseButtonOutlet, B2: RoyalSenLoseButtonOutlet, B3: WitchSenLoseButtonOutlet, B4: DragonSenLoseButtonOutlet, B5: NecroSenLoseButtonOutlet, B6: VampSenLoseButtonOutlet, B7: BishopSenLoseButtonOutlet, B8: NemesisSenLoseButtonOutlet, AllLabel: AllSenLoseLabel)
            AllDidLoad(B1: ElfeKouWinButtonOutlet, B2: RoyalKouWinButtonOutlet, B3: WitchKouWinButtonOutlet, B4: DragonKouWinButtonOutlet, B5: NecroKouWinButtonOutlet, B6: VampKouWinButtonOutlet, B7: BishopKouWinButtonOutlet, B8: NemesisKouWinButtonOutlet, AllLabel: AllKouWinLabel)
            AllDidLoad(B1: ElfeKouLoseButtonOutlet, B2: RoyalKouLoseButtonOutlet, B3: WitchKouLoseButtonOutlet, B4: DragonKouLoseButtonOutlet, B5: NecroKouLoseButtonOutlet, B6: VampKouLoseButtonOutlet, B7: BishopKouLoseButtonOutlet, B8: NemesisKouLoseButtonOutlet, AllLabel: AllKouLoseLabel)
        }
        //All先行勝率の計算
        if let AllSenWinnum = Int(AllSenWinLabel.text!) {
            if let AllSenLosenum = Int(AllSenLoseLabel.text!) {
                if (AllSenWinnum + AllSenLosenum) > 0 {
                    let AllWinper = (AllSenWinnum*100)/(AllSenWinnum + AllSenLosenum)
                    AllSenWinperLabel.text = "\(AllWinper)%"
                } else {
                    AllSenWinperLabel.text = "0%"
                }
                if let AllKouWinnum = Int(AllKouWinLabel.text!) {
                    if let AllKouLosenum = Int(AllKouLoseLabel.text!) {
                        if (AllKouWinnum + AllKouLosenum) > 0 {
                            let AllWinper = (AllKouWinnum*100)/(AllKouWinnum + AllKouLosenum)
                            AllKouWinperLabel.text = "\(AllWinper)%"
                        } else {
                            AllKouWinperLabel.text = "0%"
                        }
                            if (AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum) > 0 {
                                let AllTotalWinper = ((AllSenWinnum + AllKouWinnum) * 100)/(AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum)
                                AllTotalWinperLabel.text = "\(AllTotalWinper)%"
                            } else {
                                AllTotalWinperLabel.text = "0%"
                        }
                    }
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    //初期化ボタン
    @IBAction func deletetap(_ sender: Any) {
        //アラートダイアログを生成
        let alertController = UIAlertController(
            title: "戦績の初期化",
            message: "戦績を初期化します。よろしいですか？",
            preferredStyle: .alert
        )
        //キャンセルボタン
        alertController.addAction(
            UIAlertAction(
                title:"キャンセル",
                style: .cancel,
                //ボタンを押した時に何も行わないのでnilを設定
                handler: nil
            )
        )
        //OKボタン
        alertController.addAction(
        UIAlertAction(title: "OK",
                      style: .default,
                    //ボタンを押した時に行う処理
                    handler: {action in
                        self.AllSenWinLabel.text = "0"
                        self.AllSenLoseLabel.text = "0"
                        self.AllKouWinLabel.text = "0"
                        self.AllKouLoseLabel.text = "0"
                        self.AllSenWinperLabel.text = "0%"
                        self.AllKouWinperLabel.text = "0%"
                        self.AllTotalWinperLabel.text = "0%"
                        self.ElfeSenWinButtonOutlet.setTitle("0", for: .normal)
                        self.ElfeSenLoseButtonOutlet.setTitle("0", for: .normal)
                        self.ElfeKouWinButtonOutlet.setTitle("0", for: .normal)
                        self.ElfeKouLoseButtonOutlet.setTitle("0", for: .normal)
                        self.ElfeSenWinperLabel.text = "0%"
                        self.ElfeKouWinperLabel.text = "0%"
                        self.ElfeTotalWinper.text = "0%"
                        self.deleteSave(ButtonName: "ElfeSenWin")
                        self.deleteSave(ButtonName: "ElfeSenLose")
                        self.deleteSave(ButtonName: "ElfeKouWin")
                        self.deleteSave(ButtonName: "ElfeKouLose")
                        self.RoyalSenWinButtonOutlet.setTitle("0", for: .normal)
                        self.RoyalSenLoseButtonOutlet.setTitle("0", for: .normal)
                        self.RoyalKouWinButtonOutlet.setTitle("0", for: .normal)
                        self.RoyalKouLoseButtonOutlet.setTitle("0", for: .normal)
                        self.RoyalSenWinperLabel.text = "0%"
                        self.RoyalKouWinperLabel.text = "0%"
                        self.RoyalTotalWinper.text = "0%"
                        self.deleteSave(ButtonName: "RoyalSenWin")
                        self.deleteSave(ButtonName: "RoyalSenLose")
                        self.deleteSave(ButtonName: "RoyalKouWin")
                        self.deleteSave(ButtonName: "RoyalKouLose")
                        self.WitchSenWinButtonOutlet.setTitle("0", for: .normal)
                        self.WitchSenLoseButtonOutlet.setTitle("0", for: .normal)
                        self.WitchKouWinButtonOutlet.setTitle("0", for: .normal)
                        self.WitchKouLoseButtonOutlet.setTitle("0", for: .normal)
                        self.WitchSenWinperLabel.text = "0%"
                        self.WitchKouWinperLabel.text = "0%"
                        self.WitchTotalWinper.text = "0%"
                        self.deleteSave(ButtonName: "WitchSenWin")
                        self.deleteSave(ButtonName: "WitchSenLose")
                        self.deleteSave(ButtonName: "WitchKouWin")
                        self.deleteSave(ButtonName: "WitchKouLose")
                        self.DragonSenWinButtonOutlet.setTitle("0", for: .normal)
                        self.DragonSenLoseButtonOutlet.setTitle("0", for: .normal)
                        self.DragonKouWinButtonOutlet.setTitle("0", for: .normal)
                        self.DragonKouLoseButtonOutlet.setTitle("0", for: .normal)
                        self.DragonSenWinperLabel.text = "0%"
                        self.DragonKouWinperLabel.text = "0%"
                        self.DragonTotalWinper.text = "0%"
                        self.deleteSave(ButtonName: "DragonSenWin")
                        self.deleteSave(ButtonName: "DragonSenLose")
                        self.deleteSave(ButtonName: "DragonKouWin")
                        self.deleteSave(ButtonName: "DragonKouLose")
                        self.NecroSenWinButtonOutlet.setTitle("0", for: .normal)
                        self.NecroSenLoseButtonOutlet.setTitle("0", for: .normal)
                        self.NecroKouWinButtonOutlet.setTitle("0", for: .normal)
                        self.NecroKouLoseButtonOutlet.setTitle("0", for: .normal)
                        self.NecroSenWinperLabel.text = "0%"
                        self.NecroKouWinperLabel.text = "0%"
                        self.NecroTotalWinper.text = "0%"
                        self.deleteSave(ButtonName: "NecroSenWin")
                        self.deleteSave(ButtonName: "NecroSenLose")
                        self.deleteSave(ButtonName: "NecroKouWin")
                        self.deleteSave(ButtonName: "NecroKouLose")
                        self.VampSenWinButtonOutlet.setTitle("0", for: .normal)
                        self.VampSenLoseButtonOutlet.setTitle("0", for: .normal)
                        self.VampKouWinButtonOutlet.setTitle("0", for: .normal)
                        self.VampKouLoseButtonOutlet.setTitle("0", for: .normal)
                        self.VampSenWinperLabel.text = "0%"
                        self.VampKouWinperLabel.text = "0%"
                        self.VampTotalWinper.text = "0%"
                        self.deleteSave(ButtonName: "VampSenWin")
                        self.deleteSave(ButtonName: "VampSenLose")
                        self.deleteSave(ButtonName: "VampKouWin")
                        self.deleteSave(ButtonName: "VampKouLose")
                        self.BishopSenWinButtonOutlet.setTitle("0", for: .normal)
                        self.BishopSenLoseButtonOutlet.setTitle("0", for: .normal)
                        self.BishopKouWinButtonOutlet.setTitle("0", for: .normal)
                        self.BishopKouLoseButtonOutlet.setTitle("0", for: .normal)
                        self.BishopSenWinperLabel.text = "0%"
                        self.BishopKouWinperLabel.text = "0%"
                        self.BishopTotalWinper.text = "0%"
                        self.deleteSave(ButtonName: "BishopSenWin")
                        self.deleteSave(ButtonName: "BishopSenLose")
                        self.deleteSave(ButtonName: "BishopKouWin")
                        self.deleteSave(ButtonName: "BishopKouLose")
                        self.NemesisSenWinButtonOutlet.setTitle("0", for: .normal)
                        self.NemesisSenLoseButtonOutlet.setTitle("0", for: .normal)
                        self.NemesisKouWinButtonOutlet.setTitle("0", for: .normal)
                        self.NemesisKouLoseButtonOutlet.setTitle("0", for: .normal)
                        self.NemesisSenWinperLabel.text = "0%"
                        self.NemesisKouWinperLabel.text = "0%"
                        self.NemesisTotalWinper.text = "0%"
                        self.deleteSave(ButtonName: "NemesisSenWin")
                        self.deleteSave(ButtonName: "NemesisSenLose")
                        self.deleteSave(ButtonName: "NemesisKouWin")
                        self.deleteSave(ButtonName: "NemesisKouLose")
                        
            }
            )
    )
        present(alertController, animated: true, completion: nil)
        
}
        

    
    
    //増やす減らす切り替えボタン
    @IBOutlet weak var SwichButton: UISwitch!
    
    //ALLラベル管理
    
    @IBOutlet weak var AllSenWinLabel: UILabel!
    @IBOutlet weak var AllSenLoseLabel: UILabel!
    @IBOutlet weak var AllKouWinLabel: UILabel!
    @IBOutlet weak var AllKouLoseLabel: UILabel!
    @IBOutlet weak var AllSenWinperLabel: UILabel!
    @IBOutlet weak var AllKouWinperLabel: UILabel!
    @IBOutlet weak var AllTotalWinperLabel: UILabel!
    
    //先攻勝ちの時の関数
    func SenWinTap(SenWin: UIButton!, SenLose: UIButton!, KouWin: UIButton!, KouLose: UIButton!, Label: UILabel!, TotalLabel: UILabel!, ButtonName: String) {
        let curname = SenWin.currentTitle!
        //タップした時、勝ち数を１増やす
        if SwichButton.isOn {
            if let cur = Int(SenWin.currentTitle!) {
                let next = cur + 1
                SenWin.setTitle("\(next)", for: .normal)
            }
        } else {
            //タップした時、勝ち数を１減らす
            if let cur = Int(SenWin.currentTitle!) {
                let next = cur - 1
                if next >= 0 {
                    SenWin.setTitle("\(next)", for: .normal)
                } else {
                    SenWin.setTitle("0", for: .normal)
                }
            }
        }
        //先攻勝率を計算する
        if let SenWinnum = Int(SenWin.currentTitle!) {
            if let SenLosenum = Int(SenLose.currentTitle!) {
                if (SenWinnum + SenLosenum) > 0 {
                    let Winper = (SenWinnum*100)/(SenWinnum + SenLosenum)
                    Label.text = "\(Winper)%"
                } else {
                    Label.text = "0%"
                }
                //総合勝率を計算する
                if let KouWinnum = Int(KouWin.currentTitle!) {
                    if let KouLosenum = Int(KouLose.currentTitle!) {
                        if (SenWinnum + KouWinnum + SenLosenum + KouLosenum) > 0 {
                            let TotalWinper = ((SenWinnum + KouWinnum) * 100)/(SenWinnum + KouWinnum + SenLosenum + KouLosenum)
                            TotalLabel.text = "\(TotalWinper)%"
                        } else {
                            TotalLabel.text = "0%"
                        }
                    }
                }
            }
        }
        if let detail = detailItem {
            let deckName = detail.description
            //userdefaultsの参照
            let userDefaults = UserDefaults.standard
            userDefaults.set(SenWin.currentTitle!, forKey: (deckName + ButtonName))
            //userDefaultsへの値の保存を明示的に行う
            userDefaults.synchronize()
            
        }
        //クラス全体の勝ち数と勝率を計算する
        if let Allcur = Int(AllSenWinLabel.text!) {
            if SwichButton.isOn {
                let Allnext = Allcur + 1
                AllSenWinLabel.text = "\(Allnext)"
            } else {
                if curname != "0"  {
                    let Allnext = Allcur - 1
                    if Allnext >= 0 {
                        AllSenWinLabel.text = "\(Allnext)"
                    } else {
                        AllSenWinLabel.text = "0"
                    }
                }
            }
        }
        if let AllSenWinnum = Int(AllSenWinLabel.text!) {
            if let AllSenLosenum = Int(AllSenLoseLabel.text!) {
                if (AllSenWinnum + AllSenLosenum) > 0 {
                    let AllWinper = (AllSenWinnum*100)/(AllSenWinnum + AllSenLosenum)
                    AllSenWinperLabel.text = "\(AllWinper)%"
                } else {
                    AllSenWinperLabel.text = "0%"
                }
                if let AllKouWinnum = Int(AllKouWinLabel.text!) {
                    if let AllKouLosenum = Int(AllKouLoseLabel.text!) {
                        if (AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum) > 0 {
                            let AllTotalWinper = ((AllSenWinnum + AllKouWinnum) * 100)/(AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum)
                            AllTotalWinperLabel.text = "\(AllTotalWinper)%"
                        } else {
                            AllTotalWinperLabel.text = "0%"
                        }
                    }
                }
            }
        }
    }
    
    //先行負けの時の関数
    func SenLoseTap(SenWin: UIButton!, SenLose: UIButton!, KouWin: UIButton!, KouLose: UIButton!, Label: UILabel!, TotalLabel: UILabel!, ButtonName: String) {
        let curname = SenLose.currentTitle!
        //タップした時、負け数を１増やす
        if SwichButton.isOn {
            if let cur = Int(SenLose.currentTitle!) {
                let next = cur + 1
                SenLose.setTitle("\(next)", for: .normal)
            }
        }else {
            //タップした時、負け数を１減らす
            if let cur = Int(SenLose.currentTitle!) {
                let next = cur - 1
                if next >= 0 {
                    SenLose.setTitle("\(next)", for: .normal)
                } else {
                    SenLose.setTitle("0", for: .normal)
                }
            }
        }
        
        //先攻勝率を計算する
        if let SenWinnum = Int(SenWin.currentTitle!) {
            if let SenLosenum = Int(SenLose.currentTitle!) {
                if (SenWinnum + SenLosenum) > 0 {
                    let Winper = (SenWinnum*100)/(SenWinnum + SenLosenum)
                    Label.text = "\(Winper)%"
                } else {
                    Label.text = "0%"
                }
                //勝率を計算する
                if let KouWinnum = Int(KouWin.currentTitle!) {
                    if let KouLosenum = Int(KouLose.currentTitle!) {
                        if (SenWinnum + KouWinnum + SenLosenum + KouLosenum) > 0 {
                            let TotalWinper = ((SenWinnum + KouWinnum) * 100)/(SenWinnum + KouWinnum + SenLosenum + KouLosenum)
                            TotalLabel.text = "\(TotalWinper)%"
                        } else {
                            TotalLabel.text = "0%"
                        }
                    }
                }
            }
        }
        if let detail = detailItem {
            let deckName = detail.description
            //userdefaultsの参照
            let userDefaults = UserDefaults.standard
            userDefaults.set(SenLose.currentTitle!, forKey: (deckName + ButtonName))
            //userDefaultsへの値の保存を明示的に行う
            userDefaults.synchronize()
        }
        //クラス全体の負け数と勝率を計算する
        if let Allcur = Int(AllSenLoseLabel.text!) {
            if SwichButton.isOn {
                let Allnext = Allcur + 1
                AllSenLoseLabel.text = "\(Allnext)"
            } else {
                if curname != "0" {
                    let Allnext = Allcur - 1
                    if Allnext >= 0 {
                        AllSenLoseLabel.text = "\(Allnext)"
                    } else {
                        AllSenLoseLabel.text = "0"
                    }
                }
            }
        }
        if let AllSenWinnum = Int(AllSenWinLabel.text!) {
            if let AllSenLosenum = Int(AllSenLoseLabel.text!) {
                if (AllSenWinnum + AllSenLosenum) > 0 {
                    let AllWinper = (AllSenWinnum*100)/(AllSenWinnum + AllSenLosenum)
                    AllSenWinperLabel.text = "\(AllWinper)%"
                } else {
                    AllSenWinperLabel.text = "0%"
                }
                if let AllKouWinnum = Int(AllKouWinLabel.text!) {
                    if let AllKouLosenum = Int(AllKouLoseLabel.text!) {
                        if(AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum) > 0 {
                            let AllTotalWinper = ((AllSenWinnum + AllKouWinnum) * 100)/(AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum)
                            AllTotalWinperLabel.text = "\(AllTotalWinper)%"
                        } else {
                            AllTotalWinperLabel.text = "0%"
                        }
                    }
                }
            }
        }
        
    }
    //後攻勝ちの時の関数
    func KouWinTap(SenWin: UIButton!, SenLose: UIButton!, KouWin: UIButton!, KouLose: UIButton!, Label: UILabel!, TotalLabel: UILabel!,ButtonName: String) {
        let curname = KouWin.currentTitle!
        //タップした時、勝ち数を１増やす
        if let cur = Int(KouWin.currentTitle!) {
            if SwichButton.isOn {
                let next = cur + 1
                KouWin.setTitle("\(next)", for: .normal)
            } else {
                //タップした時、勝ち数を１減らす
                let next = cur - 1
                if next >= 0 {
                    KouWin.setTitle("\(next)", for: .normal)
                } else {
                    KouWin.setTitle("0", for: .normal)
                }
            }
        }
        //後攻勝率を計算する
        if let KouWinnum = Int(KouWin.currentTitle!) {
            if let KouLosenum = Int(KouLose.currentTitle!) {
                if (KouWinnum + KouLosenum) > 0 {
                    let Winper = (KouWinnum*100)/(KouWinnum + KouLosenum)
                    Label.text = "\(Winper)%"
                } else {
                    Label.text = "0%"
                }
                //勝率を計算する
                if let SenWinnum = Int(SenWin.currentTitle!) {
                    if let SenLosenum = Int(SenLose.currentTitle!) {
                        if (SenWinnum + KouWinnum + SenLosenum + KouLosenum) > 0 {
                            let TotalWinper = ((SenWinnum + KouWinnum) * 100)/(SenWinnum + KouWinnum + SenLosenum + KouLosenum)
                            TotalLabel.text = "\(TotalWinper)%"
                        } else {
                           TotalLabel.text = "0%"
                        }
                    }
                }
            }
        }
        if let detail = detailItem {
            let deckName = detail.description
            //userdefaultsの参照
            let userDefaults = UserDefaults.standard
            userDefaults.set(KouWin.currentTitle!, forKey: (deckName + ButtonName))
            //userDefaultsへの値の保存を明示的に行う
            userDefaults.synchronize()
        }
        //クラス全体の勝ち数と勝率を計算する
        if let Allcur = Int(AllKouWinLabel.text!) {
            if SwichButton.isOn {
                let Allnext = Allcur + 1
                AllKouWinLabel.text = "\(Allnext)"
            } else {
                if curname != "0" {
                    let Allnext = Allcur - 1
                    if Allnext >= 0 {
                        AllKouWinLabel.text = "\(Allnext)"
                    }else {
                        AllKouWinLabel.text = "0"
                    }
                }
            }
        }
        if let AllKouWinnum = Int(AllKouWinLabel.text!) {
            if let AllKouLosenum = Int(AllKouLoseLabel.text!) {
                if (AllKouWinnum + AllKouLosenum) > 0 {
                    let AllWinper = (AllKouWinnum*100)/(AllKouWinnum + AllKouLosenum)
                    AllKouWinperLabel.text = "\(AllWinper)%"
                } else {
                    AllKouWinperLabel.text = "0%"
                }
                if let AllSenWinnum = Int(AllSenWinLabel.text!) {
                    if let AllSenLosenum = Int(AllSenLoseLabel.text!) {
                        if (AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum) > 0 {
                            let AllTotalWinper = ((AllSenWinnum + AllKouWinnum) * 100)/(AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum)
                            AllTotalWinperLabel.text = "\(AllTotalWinper)%"
                        } else {
                            AllTotalWinperLabel.text = "0%"
                        }
                    }
                }
            }
        }
    }
    //後攻負けの時の関数
    func KouLoseTap(SenWin: UIButton!, SenLose: UIButton!, KouWin: UIButton!, KouLose: UIButton!, Label: UILabel!, TotalLabel: UILabel!, ButtonName: String) {
        let curname = KouLose.currentTitle!
        //タップした時負け数を１増やす
        if SwichButton.isOn {
            if let cur = Int(KouLose.currentTitle!) {
                let next = cur + 1
                KouLose.setTitle("\(next)", for: .normal)
            }
        } else {
            //タップした時負け数を１へらす
            if let cur = Int(KouLose.currentTitle!) {
                let next = cur - 1
                if  next >= 0 {
                    KouLose.setTitle("\(next)", for: .normal)
                } else{
                    KouLose.setTitle("0", for: .normal)
                }
            }
        }
        //後攻勝率を計算する
        if let KouWinnum = Int(KouWin.currentTitle!) {
            if let KouLosenum = Int(KouLose.currentTitle!) {
                if (KouWinnum + KouLosenum) > 0 {
                    let Winper = (KouWinnum*100)/(KouWinnum + KouLosenum)
                    Label.text = "\(Winper)%"
                } else {
                    Label.text = "0%"
                }
                //勝率を計算する
                if let SenWinnum = Int(SenWin.currentTitle!) {
                    if let SenLosenum = Int(SenLose.currentTitle!) {
                        if (SenWinnum + KouWinnum + SenLosenum + KouLosenum) > 0 {
                            let TotalWinper = ((SenWinnum + KouWinnum) * 100)/(SenWinnum + KouWinnum + SenLosenum + KouLosenum)
                            TotalLabel.text = "\(TotalWinper)%"
                        } else {
                            TotalLabel.text = "0%"
                        }
                    }
                }
            }
        }
        if let detail = detailItem {
            let deckName = detail.description
            //userdefaultsの参照
            let userDefaults = UserDefaults.standard
            userDefaults.set(KouLose.currentTitle!, forKey: (deckName + ButtonName))
            //userDefaultsへの値の保存を明示的に行う
            userDefaults.synchronize()
        }
        //クラス全体の負け数を勝率を計算する
        if let Allcur = Int(AllKouLoseLabel.text!) {
            if SwichButton.isOn {
                let Allnext = Allcur + 1
                AllKouLoseLabel.text = "\(Allnext)"
            } else {
                if curname != "0" {
                    let Allnext = Allcur - 1
                    if Allnext >= 0 {
                        AllKouLoseLabel.text = "\(Allnext)"
                    } else {
                        AllKouLoseLabel.text = "0"
                    }
                }
            }
        }
        if let AllKouWinnum = Int(AllKouWinLabel.text!) {
            if let AllKouLosenum = Int(AllKouLoseLabel.text!) {
                if (AllKouWinnum + AllKouLosenum) > 0 {
                    let AllWinper = (AllKouWinnum*100)/(AllKouWinnum + AllKouLosenum)
                    AllKouWinperLabel.text = "\(AllWinper)%"
                } else {
                    AllKouWinperLabel.text = "0%"
                }
                if let AllSenWinnum = Int(AllSenWinLabel.text!) {
                    if let AllSenLosenum = Int(AllSenLoseLabel.text!) {
                        if (AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum) > 0 {
                            let AllTotalWinper = ((AllSenWinnum + AllKouWinnum) * 100)/(AllSenWinnum + AllKouWinnum + AllSenLosenum + AllKouLosenum)
                            AllTotalWinperLabel.text = "\(AllTotalWinper)%"
                        } else {
                            AllTotalWinperLabel.text = "0%"
                        }
                    }
                }
            }
        }
    
    }
    
    //アプリ起動後の各クラスの勝率表示をするための関数
    func WinperDidLoad(SenWin: UIButton!, SenLose: UIButton!, KouWin: UIButton!, KouLose: UIButton!, SenLabel: UILabel!, KouLabel: UILabel!, TotalLabel: UILabel!) {
        //先攻勝率を計算する
        if let SenWinnum = Int(SenWin.currentTitle!) {
            if let SenLosenum = Int(SenLose.currentTitle!) {
                if (SenWinnum + SenLosenum) > 0 {
                    let Winper = (SenWinnum*100)/(SenWinnum + SenLosenum)
                    SenLabel.text = "\(Winper)%"
                } else {
                    SenLabel.text = "0%"
                }
                //後攻勝率を計算する
                if let KouWinnum = Int(KouWin.currentTitle!) {
                    if let KouLosenum = Int(KouLose.currentTitle!) {
                        if (KouWinnum + KouLosenum) > 0 {
                            let Winper = (KouWinnum*100)/(KouWinnum + KouLosenum)
                            KouLabel.text = "\(Winper)%"
                        } else {
                            KouLabel.text = "0%"
                        }
                        //勝率を計算する
                       
                        if (SenWinnum + KouWinnum + SenLosenum + KouLosenum) > 0 {
                            let TotalWinper = ((SenWinnum + KouWinnum) * 100)/(SenWinnum + KouWinnum + SenLosenum + KouLosenum)
                            TotalLabel.text = "\(TotalWinper)%"
                        } else {
                            TotalLabel.text = "0%"
                        }
                    }
                }
            }
        }
    }
    
    //Allのアプリ起動後の表示
    func AllDidLoad(B1: UIButton!,B2: UIButton!,B3: UIButton!,B4: UIButton!,B5: UIButton!,B6: UIButton!,B7: UIButton!,B8: UIButton!,AllLabel: UILabel!) {
        if let b1 = Int(B1.currentTitle!){
            if let b2 = Int(B2.currentTitle!){
                if let b3 = Int(B3.currentTitle!){
                    if let b4 = Int(B4.currentTitle!){
                        if let b5 = Int(B5.currentTitle!){
                            if let b6 = Int(B6.currentTitle!){
                                if let b7 = Int(B7.currentTitle!) {
                                    if let b8 = Int(B8.currentTitle!){
                                        AllLabel.text = "\(b1+b2+b3+b4+b5+b6+b7+b8)"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    func deleteSave (ButtonName: String){
        if let detail = detailItem {
            let deckName = detail.description
            //userdefaultsの参照
            let userDefaults = UserDefaults.standard
            userDefaults.set("0", forKey: (deckName + ButtonName))
            //userDefaultsへの値の保存を明示的に行う
            userDefaults.synchronize()
        }
    }
    
    //エルフボタンタップ操作
    @IBOutlet weak var ElfeTotalWinper: UILabel!
    @IBOutlet weak var ElfeSenWinperLabel: UILabel!
    @IBOutlet weak var ElfeKouWinperLabel: UILabel!
    @IBOutlet weak var ElfeSenWinButtonOutlet: UIButton!
    @IBOutlet weak var ElfeSenLoseButtonOutlet: UIButton!
    @IBOutlet weak var ElfeKouWinButtonOutlet: UIButton!
    @IBOutlet weak var ElfeKouLoseButtonOutlet: UIButton!
    
    @IBAction func ElfeSenWinButton(_ sender: Any) {
        SenWinTap(SenWin: ElfeSenWinButtonOutlet, SenLose: ElfeSenLoseButtonOutlet, KouWin: ElfeKouWinButtonOutlet, KouLose: ElfeKouLoseButtonOutlet, Label: ElfeSenWinperLabel, TotalLabel: ElfeTotalWinper, ButtonName: "ElfeSenWin")
    }
    @IBAction func ElfeSenLoseButton(_ sender: Any) {
       SenLoseTap(SenWin: ElfeSenWinButtonOutlet, SenLose: ElfeSenLoseButtonOutlet, KouWin: ElfeKouWinButtonOutlet, KouLose: ElfeKouLoseButtonOutlet, Label: ElfeSenWinperLabel, TotalLabel: ElfeTotalWinper, ButtonName: "ElfeSenLose")
    }
    @IBAction func ElfeKouWinButton(_ sender: Any) {
        KouWinTap(SenWin: ElfeSenWinButtonOutlet, SenLose: ElfeSenLoseButtonOutlet, KouWin: ElfeKouWinButtonOutlet, KouLose: ElfeKouLoseButtonOutlet, Label: ElfeKouWinperLabel, TotalLabel: ElfeTotalWinper, ButtonName: "ElfeKouWin")
    }
    @IBAction func ElfeKouLoseButton(_ sender: Any) {
        KouLoseTap(SenWin: ElfeSenWinButtonOutlet, SenLose: ElfeSenLoseButtonOutlet, KouWin: ElfeKouWinButtonOutlet, KouLose: ElfeKouLoseButtonOutlet, Label: ElfeKouWinperLabel, TotalLabel: ElfeTotalWinper, ButtonName: "ElfeKouLose")
    }
    //ロイヤルボタンタップ操作
    @IBOutlet weak var RoyalTotalWinper: UILabel!
    @IBOutlet weak var RoyalSenWinperLabel: UILabel!
    @IBOutlet weak var RoyalKouWinperLabel: UILabel!
    @IBOutlet weak var RoyalSenWinButtonOutlet: UIButton!
    @IBOutlet weak var RoyalSenLoseButtonOutlet: UIButton!
    @IBOutlet weak var RoyalKouWinButtonOutlet: UIButton!
    @IBOutlet weak var RoyalKouLoseButtonOutlet: UIButton!
    
    @IBAction func RoyalSenWinButton(_ sender: Any) {
       SenWinTap(SenWin: RoyalSenWinButtonOutlet, SenLose: RoyalSenLoseButtonOutlet, KouWin: RoyalKouWinButtonOutlet, KouLose: RoyalKouLoseButtonOutlet, Label: RoyalSenWinperLabel, TotalLabel: RoyalTotalWinper, ButtonName: "RoyalSenWin")
    }
    @IBAction func RoyalSenLoseButton(_ sender: Any) {
       SenLoseTap(SenWin: RoyalSenWinButtonOutlet, SenLose: RoyalSenLoseButtonOutlet, KouWin: RoyalKouWinButtonOutlet, KouLose: RoyalKouLoseButtonOutlet, Label: RoyalSenWinperLabel, TotalLabel: RoyalTotalWinper, ButtonName: "RoyalSenLose")
    }
    @IBAction func RoyalKouWinButton(_ sender: Any) {
        KouWinTap(SenWin: RoyalSenWinButtonOutlet, SenLose: RoyalSenLoseButtonOutlet, KouWin: RoyalKouWinButtonOutlet, KouLose: RoyalKouLoseButtonOutlet, Label: RoyalKouWinperLabel, TotalLabel: RoyalTotalWinper, ButtonName: "RoyalKouWin")
    }
    @IBAction func RoyalKouLoseButton(_ sender: Any) {
       KouLoseTap(SenWin: RoyalSenWinButtonOutlet, SenLose: RoyalSenLoseButtonOutlet, KouWin: RoyalKouWinButtonOutlet, KouLose: RoyalKouLoseButtonOutlet, Label: RoyalKouWinperLabel, TotalLabel: RoyalTotalWinper, ButtonName: "RoyalKouLose")
    }
//ウィッチボタンタップ操作
    @IBOutlet weak var WitchTotalWinper: UILabel!
    @IBOutlet weak var WitchSenWinperLabel: UILabel!
    @IBOutlet weak var WitchKouWinperLabel: UILabel!
    @IBOutlet weak var WitchSenWinButtonOutlet: UIButton!
    @IBOutlet weak var WitchSenLoseButtonOutlet: UIButton!
    @IBOutlet weak var WitchKouWinButtonOutlet: UIButton!
    @IBOutlet weak var WitchKouLoseButtonOutlet: UIButton!
    @IBAction func WitchSenWinButton(_ sender: Any) {
        SenWinTap(SenWin: WitchSenWinButtonOutlet, SenLose: WitchSenLoseButtonOutlet, KouWin: WitchKouWinButtonOutlet, KouLose: WitchKouLoseButtonOutlet, Label: WitchSenWinperLabel, TotalLabel: WitchTotalWinper, ButtonName: "WitchSenWin")
    }
    @IBAction func WitchSenLoseButton(_ sender: Any) {
       SenLoseTap(SenWin: WitchSenWinButtonOutlet, SenLose: WitchSenLoseButtonOutlet, KouWin: WitchKouWinButtonOutlet, KouLose: WitchKouLoseButtonOutlet, Label: WitchSenWinperLabel, TotalLabel: WitchTotalWinper, ButtonName: "WitchSenLose")
    }
    @IBAction func WitchKouWinButton(_ sender: Any) {
        KouWinTap(SenWin: WitchSenWinButtonOutlet, SenLose: WitchSenLoseButtonOutlet, KouWin: WitchKouWinButtonOutlet, KouLose: WitchKouLoseButtonOutlet, Label: WitchKouWinperLabel, TotalLabel: WitchTotalWinper, ButtonName: "WitchKouWin")
    }
    @IBAction func WitchKouLoseButton(_ sender: Any) {
       KouLoseTap(SenWin: WitchSenWinButtonOutlet, SenLose: WitchSenLoseButtonOutlet, KouWin: WitchKouWinButtonOutlet, KouLose: WitchKouLoseButtonOutlet, Label: WitchKouWinperLabel, TotalLabel: WitchTotalWinper, ButtonName: "WitchKouLose")
    }
    //ドラゴンボタンタップ操作
    @IBOutlet weak var DragonTotalWinper: UILabel!
    @IBOutlet weak var DragonSenWinperLabel: UILabel!
    @IBOutlet weak var DragonKouWinperLabel: UILabel!
    @IBOutlet weak var DragonSenWinButtonOutlet: UIButton!
    @IBOutlet weak var DragonSenLoseButtonOutlet: UIButton!
    @IBOutlet weak var DragonKouWinButtonOutlet: UIButton!
    @IBOutlet weak var DragonKouLoseButtonOutlet: UIButton!
    
     @IBAction func DragonSenWinButton(_ sender: Any) {
        SenWinTap(SenWin: DragonSenWinButtonOutlet, SenLose: DragonSenLoseButtonOutlet, KouWin: DragonKouWinButtonOutlet, KouLose: DragonKouLoseButtonOutlet, Label: DragonSenWinperLabel, TotalLabel: DragonTotalWinper, ButtonName: "DragonSenWin")
    }
    @IBAction func DragonSenLoseButton(_ sender: Any) {
        SenLoseTap(SenWin: DragonSenWinButtonOutlet, SenLose: DragonSenLoseButtonOutlet, KouWin: DragonKouWinButtonOutlet, KouLose: DragonKouLoseButtonOutlet, Label: DragonSenWinperLabel, TotalLabel: DragonTotalWinper, ButtonName: "DragonSenLose")
    }
    @IBAction func DragonKouWinButton(_ sender: Any) {
       KouWinTap(SenWin: DragonSenWinButtonOutlet, SenLose: DragonSenLoseButtonOutlet, KouWin: DragonKouWinButtonOutlet, KouLose: DragonKouLoseButtonOutlet, Label: DragonKouWinperLabel, TotalLabel: DragonTotalWinper, ButtonName: "DragonKouWin")
    }
    @IBAction func DragonKouLoseButton(_ sender: Any) {
       KouLoseTap(SenWin: DragonSenWinButtonOutlet, SenLose: DragonSenLoseButtonOutlet, KouWin: DragonKouWinButtonOutlet, KouLose: DragonKouLoseButtonOutlet, Label: DragonKouWinperLabel, TotalLabel: DragonTotalWinper, ButtonName: "DragonKouLose")
    }
    //ネクロボタンタップ操作
    @IBOutlet weak var NecroTotalWinper: UILabel!
    @IBOutlet weak var NecroSenWinperLabel: UILabel!
    @IBOutlet weak var NecroKouWinperLabel: UILabel!
    @IBOutlet weak var NecroSenWinButtonOutlet: UIButton!
    @IBOutlet weak var NecroSenLoseButtonOutlet: UIButton!
    @IBOutlet weak var NecroKouWinButtonOutlet: UIButton!
    @IBOutlet weak var NecroKouLoseButtonOutlet: UIButton!
    
    @IBAction func NecroSenWinButton(_ sender: Any) {
        SenWinTap(SenWin: NecroSenWinButtonOutlet, SenLose: NecroSenLoseButtonOutlet, KouWin: NecroKouWinButtonOutlet, KouLose: NecroKouLoseButtonOutlet, Label: NecroSenWinperLabel, TotalLabel: NecroTotalWinper, ButtonName: "NecroSenWin")
    }
    @IBAction func NecroSenLoseButton(_ sender: Any) {
        SenLoseTap(SenWin: NecroSenWinButtonOutlet, SenLose: NecroSenLoseButtonOutlet, KouWin: NecroKouWinButtonOutlet, KouLose: NecroKouLoseButtonOutlet, Label: NecroSenWinperLabel, TotalLabel: NecroTotalWinper, ButtonName: "NecroSenLose")
    }
    @IBAction func NecroKouWinButton(_ sender: Any) {
        KouWinTap(SenWin: NecroSenWinButtonOutlet, SenLose: NecroSenLoseButtonOutlet, KouWin: NecroKouWinButtonOutlet, KouLose: NecroKouLoseButtonOutlet, Label: NecroKouWinperLabel, TotalLabel: NecroTotalWinper, ButtonName: "NecroKouWin")
    }
    @IBAction func NecroKouLoseButton(_ sender: Any) {
        KouLoseTap(SenWin: NecroSenWinButtonOutlet, SenLose: NecroSenLoseButtonOutlet, KouWin: NecroKouWinButtonOutlet, KouLose: NecroKouLoseButtonOutlet, Label: NecroKouWinperLabel, TotalLabel: NecroTotalWinper, ButtonName: "NecroKouLose")
    }
    //ヴァンパイアタップ操作
    @IBOutlet weak var VampTotalWinper: UILabel!
    @IBOutlet weak var VampSenWinperLabel: UILabel!
    @IBOutlet weak var VampKouWinperLabel: UILabel!
    @IBOutlet weak var VampSenWinButtonOutlet: UIButton!
    @IBOutlet weak var VampSenLoseButtonOutlet: UIButton!
    @IBOutlet weak var VampKouWinButtonOutlet: UIButton!
    @IBOutlet weak var VampKouLoseButtonOutlet: UIButton!
    @IBAction func VampSenWinButton(_ sender: Any) {
        SenWinTap(SenWin: VampSenWinButtonOutlet, SenLose: VampSenLoseButtonOutlet, KouWin: VampKouWinButtonOutlet, KouLose: VampKouLoseButtonOutlet, Label: VampSenWinperLabel, TotalLabel: VampTotalWinper, ButtonName: "VampSenWin")
    }
    @IBAction func VampSenLoseButton(_ sender: Any) {
        SenLoseTap(SenWin: VampSenWinButtonOutlet, SenLose: VampSenLoseButtonOutlet, KouWin: VampKouWinButtonOutlet, KouLose: VampKouLoseButtonOutlet, Label: VampSenWinperLabel, TotalLabel: VampTotalWinper, ButtonName: "VampSenLose")
    }
    @IBAction func VampKouWinButton(_ sender: Any) {
        KouWinTap(SenWin: VampSenWinButtonOutlet, SenLose: VampSenLoseButtonOutlet, KouWin: VampKouWinButtonOutlet, KouLose: VampKouLoseButtonOutlet, Label: VampKouWinperLabel, TotalLabel: VampTotalWinper, ButtonName: "VampKouWin")
    }
    @IBAction func VampKouLoseButton(_ sender: Any) {
        KouLoseTap(SenWin: VampSenWinButtonOutlet, SenLose: VampSenLoseButtonOutlet, KouWin: VampKouWinButtonOutlet, KouLose: VampKouLoseButtonOutlet, Label: VampKouWinperLabel, TotalLabel: VampTotalWinper, ButtonName: "VampKouLose")
    }
    //ビショップタップ操作
    @IBOutlet weak var BishopTotalWinper: UILabel!
    @IBOutlet weak var BishopSenWinperLabel: UILabel!
    @IBOutlet weak var BishopKouWinperLabel: UILabel!
    @IBOutlet weak var BishopSenWinButtonOutlet: UIButton!
    @IBOutlet weak var BishopSenLoseButtonOutlet: UIButton!
    @IBOutlet weak var BishopKouWinButtonOutlet: UIButton!
    @IBOutlet weak var BishopKouLoseButtonOutlet: UIButton!
    @IBAction func BishopSenWinButton(_ sender: Any) {
        SenWinTap(SenWin: BishopSenWinButtonOutlet, SenLose: BishopSenLoseButtonOutlet, KouWin: BishopKouWinButtonOutlet, KouLose: BishopKouLoseButtonOutlet, Label: BishopSenWinperLabel, TotalLabel: BishopTotalWinper, ButtonName: "BishopSenWin")
    }
    @IBAction func BishopSenLoseButton(_ sender: Any) {
        SenLoseTap(SenWin: BishopSenWinButtonOutlet, SenLose: BishopSenLoseButtonOutlet, KouWin: BishopKouWinButtonOutlet, KouLose: BishopKouLoseButtonOutlet, Label: BishopSenWinperLabel, TotalLabel: BishopTotalWinper, ButtonName: "BishopSenLose")
    }
    @IBAction func BishopKouWinButton(_ sender: Any) {
        KouWinTap(SenWin: BishopSenWinButtonOutlet, SenLose: BishopSenLoseButtonOutlet, KouWin: BishopKouWinButtonOutlet, KouLose: BishopKouLoseButtonOutlet, Label: BishopKouWinperLabel, TotalLabel: BishopTotalWinper, ButtonName: "BishopKouWin")
    }
    @IBAction func BishopKouLoseButton(_ sender: Any) {
        KouLoseTap(SenWin: BishopSenWinButtonOutlet, SenLose: BishopSenLoseButtonOutlet, KouWin: BishopKouWinButtonOutlet, KouLose: BishopKouLoseButtonOutlet, Label: BishopKouWinperLabel, TotalLabel: BishopTotalWinper, ButtonName: "BishopKouLose")
    }
    //ネメシスタップ操作
    @IBOutlet weak var NemesisTotalWinper: UILabel!
    @IBOutlet weak var NemesisSenWinperLabel: UILabel!
    @IBOutlet weak var NemesisKouWinperLabel: UILabel!
    @IBOutlet weak var NemesisSenWinButtonOutlet: UIButton!
    @IBOutlet weak var NemesisSenLoseButtonOutlet: UIButton!
    @IBOutlet weak var NemesisKouWinButtonOutlet: UIButton!
    @IBOutlet weak var NemesisKouLoseButtonOutlet: UIButton!
    
    @IBAction func NemesisSenWinButton(_ sender: Any) {
        SenWinTap(SenWin: NemesisSenWinButtonOutlet, SenLose: NemesisSenLoseButtonOutlet, KouWin: NemesisKouWinButtonOutlet, KouLose: NemesisKouLoseButtonOutlet, Label: NemesisSenWinperLabel, TotalLabel: NemesisTotalWinper, ButtonName: "NemesisSenWin")
    }
    @IBAction func NemesisSenLoseButton(_ sender: Any) {
        SenLoseTap(SenWin: NemesisSenWinButtonOutlet, SenLose: NemesisSenLoseButtonOutlet, KouWin: NemesisKouWinButtonOutlet, KouLose: NemesisKouLoseButtonOutlet, Label: NemesisSenWinperLabel, TotalLabel: NemesisTotalWinper, ButtonName: "NemesisSenLose")
    }
    @IBAction func NemesisKouWinButton(_ sender: Any) {
        KouWinTap(SenWin: NemesisSenWinButtonOutlet, SenLose: NemesisSenLoseButtonOutlet, KouWin: NemesisKouWinButtonOutlet, KouLose: NemesisKouLoseButtonOutlet, Label: NemesisKouWinperLabel, TotalLabel: NemesisTotalWinper, ButtonName: "NemesisKouWin")
    }
    @IBAction func NemesisKouLoseButton(_ sender: Any) {
        KouLoseTap(SenWin: NemesisSenWinButtonOutlet, SenLose: NemesisSenLoseButtonOutlet, KouWin: NemesisKouWinButtonOutlet, KouLose: NemesisKouLoseButtonOutlet, Label: NemesisKouWinperLabel, TotalLabel: NemesisTotalWinper, ButtonName: "NemesisKouLose")
    }
    
    
    
    
    
    
    
    
    
    
    
}




