// MARK: - Variable functions
func getAverage(notes: Double...) -> String {
    var sumValues: Double = 0

    for note in notes {
        sumValues += note
    }
    average = sumValues / Double(notes.count)
    
    return String(format: "%.2f", average)
}

print(getAverage(notes: 10, 5, 4))