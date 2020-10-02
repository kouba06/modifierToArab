local M = {}
    M.space = "20"
    M.symbols = {"20","21","22","23","24","25","26","27","28","29",
                 "2a","2b","2c","2d","2e","2f",
                 "30","31","32","33","34","35","36","37","38","39",
                 "3a","3b","3c","3d","3e","3f","40",
                 "5b","5c","5d","5e","5f","60",
                 "7b","7c","7d","7e"
                }
    M.breakWord = { "d88c","d89b","d89f","d8a2","d8a3","d8a4","d8a5","d8a7","d8af",
                    "d8b0", "d8b1", "d8b2", "d988","d9ab","d9ac","d9ad","efba82",
                    "efba84", "efba88", "efba8e"
                  }

    M.hex = {
    d8a2 = {isolated = "efba81", first = "d8a2",   middle = "efba82", last = "efba82" },--madda above
    d8a3 = {isolated = "efba83", first = "d8a3",   middle = "efba84", last = "efba84"},--hamza above
    d8a5 = {isolated = "efba87", first = "d8a5",   middle = "efba88", last = "efba88"},--hamza below
    d8a7 = {isolated = "efba8d", first = "d8a7",   middle = "efba8e", last = "efba8e"},--alef
    d8a8 = {isolated = "efba8f", first = "efba91", middle = "efba92", last = "efba90"},--baa
    d8a9 = {isolated = "efba93", first = "d8a9",   middle = "d8a9",   last = "efba94"},--taa marbota
    d8aa = {isolated = "efba95", first = "efba97", middle = "efba98", last = "efba96"},--taa mabsota
    d8ab = {isolated = "efba99", first = "efba9b", middle = "efba9c", last = "efba9a"},--taa 3 nokat
    d8ac = {isolated = "efba9a", first = "efba9f", middle = "efbaa0", last = "efba9e"},--jim
    d8ad = {isolated = "efbaa1", first = "efbaa3", middle = "efbaa4", last = "efbaa2"},--haa
    d8ae = {isolated = "efbaa5", first = "efbaa7", middle = "efbaa8", last = "efbaa6"},--khaa
    d8b3 = {isolated = "efbab1", first = "efbab3", middle = "efbab4", last = "efbab2"},--seen
    d8b4 = {isolated = "efbab5", first = "efbab7", middle = "efbab8", last = "efbab6"},--sheen
    d8b5 = {isolated = "efbab9", first = "efbabb", middle = "efbabc", last = "efbaba"},--sad
    d8b6 = {isolated = "efbabd", first = "efbabf", middle = "efbb80", last = "efbabe"},--dad
    d8b7 = {isolated = "efbb81", first = "efbb83", middle = "efbb84", last = "efbb82"},--tah
    d8b8 = {isolated = "efbb85", first = "efbb87", middle = "efbb88", last = "efbb86"},--zah
    d8b9 = {isolated = "efbb89", first = "efbb8b", middle = "efbb8c", last = "efbb8a"},--ain
    d8ba = {isolated = "efbb8d", first = "efbb8f", middle = "efbb90", last = "efbb8e"},--gain
    d981 = {isolated = "efbb91", first = "efbb93", middle = "efbb94", last = "efbb92"},--feh
    d982 = {isolated = "efbb95", first = "efbb97", middle = "efbb98", last = "efbb96"},--qaf
    d983 = {isolated = "efbb99", first = "efbb9b", middle = "efbb9c", last = "efbb9a"},--kaf
    d984 = {isolated = "efbb9d", first = "efbb9f", middle = "efbba0", last = "efbb9e"},--lam
    d985 = {isolated = "efbba1", first = "efbba3", middle = "efbba4", last = "efbba2"},--meem
    d986 = {isolated = "efbba5", first = "efbba7", middle = "efbba8", last = "efbba6"},--noon
    d987 = {isolated = "efbba9", first = "efbbab", middle = "efbbac", last = "efbbaa"},--heh
    d989 = {isolated = "efbbaf", first = "d989",   middle = "d989",   last = "efbbb0"},--alef maksura
    d98a = {isolated = "efbbb1", first = "efbbb3", middle = "efbbb4", last = "efbbb2"},--yeh
    --d981 = {isolated = "", first = "", middle = "", last = ""},--baa
}

return M
