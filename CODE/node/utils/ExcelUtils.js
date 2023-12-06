const xlsx = require("node-xlsx");
const path = require("path");
const fs = require("fs");

class ExcelUtils{
    static resultsToExcel(result){
        if(result.length > 0){
            let headRow = Object.keys(result[0]);
            let dataRows = result.map(item => Object.values(item));
            dataRows.unshift(headRow);
            let excelObj = {
                name:"sheet1",
                data:dataRows
            };
            let savePath = path.join(__dirname,"../excelDir",`${Date.now()}-${parseInt(Math.random() * 1000)}.xlsx`)
            let excelBuff = xlsx.build([excelObj]);
            fs.writeFileSync(savePath,excelBuff);
            return savePath;
        }else{
            return "";
        }
    }
}
module.exports = ExcelUtils;
