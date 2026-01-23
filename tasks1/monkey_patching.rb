class Array

    def average
        # only select numeric items
        filtered = self.select{|n| n.is_a?(Numeric)} # is_a -> is an instance of
        return nil if self.empty?
        filtered.sum /filtered.size.to_f # to ensure average is always float
    end
    
end