import java.util.HashMap;
import java.util.Map;

public class WordCountMapReduce {

    // Map function
    public static Map<String, Integer> mapFunction(String text) {
        Map<String, Integer> wordCounts = new HashMap<>();
        String[] words = text.split("\\W+"); // Splits by non-word characters
        for (String word : words) {
            if (!word.isEmpty()) {
                word = word.toLowerCase();
                wordCounts.put(word, wordCounts.getOrDefault(word, 0) + 1);
            }
        }
        return wordCounts;
    }

    // Reduce function
    public static Map<String, Integer> reduceFunction(Map<String, Integer> mappedData) {
        Map<String, Integer> reducedCounts = new HashMap<>();
        for (Map.Entry<String, Integer> entry : mappedData.entrySet()) {
            String word = entry.getKey();
            int count = entry.getValue();
            reducedCounts.put(word, reducedCounts.getOrDefault(word, 0) + count);
        }
        return reducedCounts;
    }

    public static void main(String[] args) {
        String paragraph = "A Horse and an Ass were travelling together. " +
                           "The Horse prancing along in its fine tapping's. " +  // Escaped the single quote
                           "The Ass carrying with difficulty the heavy weight in its panniers.";

        // Map phase
        Map<String, Integer> mappedData = mapFunction(paragraph);

        // Reduce phase
        Map<String, Integer> wordCountResult = reduceFunction(mappedData);

        // Print results
        for (Map.Entry<String, Integer> entry : wordCountResult.entrySet()) {
            System.out.println(entry.getKey() + ": " + entry.getValue());
        }
    }
}
