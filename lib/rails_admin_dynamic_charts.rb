#require 'lazy_high_charts/engine'
require 'rails_admin_dynamic_charts/engine'

module RailsAdminDynamicCharts
  module Datetime
    def self.included(base)
       base.extend(ClassMethods)
    end

    module ClassMethods

      def data_by(set, base_cal, date_field, calculation, acumulate = nil )
        set = set.group_by { |o| acumulate.present? ? o.send(date_field).send(acumulate) : o.send(date_field) }
        met = attribute_method?(base_cal) ? "(&:#{base_cal})" : "send(#{base_cal})"
        proc = eval "lambda { |collection| collection.map#{met}.#{calculation} }"
        set = acumulate =~ /^beginning_of/ ? set.map {|k,v| [k,proc.call(v)]} : set.sort.map {|c| [ send(acumulate)[c[0]], proc.call(c[1]) ]}
        [{:data => set}]
      end   
    
      def wday
       Date::DAYNAMES
      end

      def hour
        %w(12am 1am 2am 3am 4am 5am 6am 7am 8am 9am 10am 11am 12m 1pm 2pm 3pm 4pm 5pm 6pm 7pm 8pm 9pm 10pm 11pm)      
      end
    end
  end
end