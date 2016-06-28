require('pry')

class String
  define_method(:title_case) do
    split_sentence = self.split
    check_words = ["a","an","the","and","but","or","for","nor", "aboard","about","above","across","after","against","along","amid","among","around","as","at","atop","before","behind","below","beneath","beside","between","beyond","by","despite","down","during","for","from","in","inside","into","like","near","of","off","on","onto","out","outside","over","past","regarding","round","since","than","through","throughout","till","to","toward","under","unlike","until","up","upon","with","within","without"]

    split_sentence.each do |word|
      word.downcase!()
      if !check_words.include?(word)
        word.capitalize!()
      end
    end
    split_sentence.at(0).capitalize!()
    split_sentence.join(" ")
  end
end
