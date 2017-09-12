### VERSION SORTER

# Instructions:
# The version sort takes into account the fact that file names frequently include indices or version numbers. Standard sorting functions usually do not produce the ordering that people expect because comparisons are made on a character-by-character basis. The version sort addresses this problem, and is especially useful when browsing directories that contain many files with indices/version numbers in their names:
 
#  $ ls -1            $ ls -1v
#  foo.zml-1.gz       foo.zml-1.gz
#  foo.zml-100.gz     foo.zml-2.gz
#  foo.zml-12.gz      foo.zml-6.gz
#  foo.zml-13.gz      foo.zml-12.gz
#  foo.zml-2.gz       foo.zml-13.gz
#  foo.zml-25.gz      foo.zml-25.gz
#  foo.zml-6.gz       foo.zml-100.gz

# Code:
class Array
  def version_sort
  
### code goes here

  end
end
 
describe "version sort" do
  it "should" do
    filenames = [
      "foo-1.10.2.ext",
      "foo-1.11.ext",
      "foo-1.3.ext",
      "foo-1.50.ext",
      "foo-1.8.7.ext",
      "foo-1.9.3.ext",
      "foo-1.ext",
      "foo-10.1.ext",
      "foo-10.ext",
      "foo-100.ext",
      "foo-13.ext",
      "foo-2.0.0.ext",
      "foo-2.0.1.ext",
      "foo-2.0.ext",
      "foo-2.007.ext",
      "foo-2.01.ext",
      "foo-2.012b.ext",
      "foo-2.01a.ext",
      "foo-2.0a.ext",
      "foo-2.0b.ext",
      "foo-2.1.ext",
      "foo-25.ext",
      "foo-6.ext",
    ]

    version_sorted_filenames = [
      "foo-1.ext",
      "foo-1.3.ext",
      "foo-1.8.7.ext",
      "foo-1.9.3.ext",
      "foo-1.10.2.ext",
      "foo-1.11.ext",
      "foo-1.50.ext",
      "foo-2.0.ext",
      "foo-2.0a.ext",
      "foo-2.0b.ext",
      "foo-2.0.0.ext",
      "foo-2.0.1.ext",
      "foo-2.01.ext",
      "foo-2.1.ext",
      "foo-2.01a.ext",
      "foo-2.007.ext",
      "foo-2.012b.ext",
      "foo-6.ext",
      "foo-10.ext",
      "foo-10.1.ext",
      "foo-13.ext",
      "foo-25.ext",
      "foo-100.ext",
    ]

    describe "version sort" do
      it "should sort an unsorted list in human readable format" do
        expect (filenames.version_sort).to eq(version_sorted_filenames)
      end


    end
    
  end
end