# 2. reloadData() of Table View

There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.

UITableViewDataSource 的一個方法 `reloadData()`，可以更新 Table View 的所有數據，包含 cell、section header、section footer 以及 index arrays 等等。

其呼叫後由系統呼叫的執行順序：

1. numberOfSections(in:)

    決定 Table View 有幾個 section

2. tableView(_:numberOfRowsInSection:)

    決定一個 section 裡面有幾個 rows

3. tableView(_:cellForRowAt:)

    決定每個 row 裡面有什麼內容

以下要看 Table View 是否有該項資訊，若有才會執行

4. tableView(_:titleForHeaderInSection:)

    決定 section 的 header

5. tableView(_:titleForFooterInSection:)

    決定 section 的 footer

6. sectionIndexTitles(for:)

    決定 Table View 的右側索引欄內容

7. tableView(_:sectionForSectionIndexTitle:at:)

    決定 Table View 的右側索引欄內容對應到的 section
