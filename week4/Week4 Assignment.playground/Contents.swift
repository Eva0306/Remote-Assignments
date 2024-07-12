//:4. Please complete the following function that prints a pyramid made of asterisks.
func printPyramid(layers: Int) {
    for i in 0..<layers {
        for j in 0..<layers - i - 1 {
            print(" ", terminator: "")
        }
        for k in 0..<2 * i + 1 {
            print("*", terminator: "")
        }
        print("")
    }
}

printPyramid(layers: 5)

//:---
//:5. Do you have any App ideas that you are interested in and want to develop? List them along with a brief description (2 sentences at most), and no need to consider the availability, required techniques and business models at all.
/*:
 一個能根據目標提供飲食、運動健身建議的 app ，透過 AI 辨識功能，當使用者拍下每日飲食內容，系統能判斷熱量及營養素，並結合穿戴式裝置(如apple watch)，自動抓取消耗熱量的數據，最後提供一個綜合性評估
 */
