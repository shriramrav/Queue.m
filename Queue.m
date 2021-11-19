classdef Queue < handle
    properties
        queue = [];
    end
    methods 
        function this = Queue()
            this.queue = [];
        end
        function this = enqueue(this, entry)
            this.queue = [entry, this.queue];
        end
        function [entry] = dequeue(this)
            entry = this.queue(1); 
            this.queue(size(this.length())) = []; 
        end
        function result = length(this)
            result = length(this.queue);
        end
    end
end