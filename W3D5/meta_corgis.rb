class SnackBox
  SNACK_BOX_DATA = {
    1 => {
      "bone" => {
        "info" => "Phoenician rawhide",
        "tastiness" => 20
      },
      "kibble" => {
        "info" => "Delicately braised hamhocks",
        "tastiness" => 33
      },
      "treat" => {
        "info" => "Chewy dental sticks",
        "tastiness" => 40
      }
    },
    2 => {
      "bone" => {
        "info" => "An old dirty bone",
        "tastiness" => 2
      },
      "kibble" => {
        "info" => "Kale clusters",
        "tastiness" => 1
      },
      "treat" => {
        "info" => "Bacon",
        "tastiness" => 80
      }
    },
    3 => {
      "bone" => {
        "info" => "A steak bone",
        "tastiness" => 64
      },
      "kibble" => {
        "info" => "Sweet Potato nibbles",
        "tastiness" => 45
      },
      "treat" => {
        "info" => "Chicken bits",
        "tastiness" => 75
      }
    }
  }

  def initialize(data = SNACK_BOX_DATA)
    @data = data
  end
  def get_bone_info(box_id)
    @data[box_id]["bone"]["info"]
  end

  def get_bone_tastiness(box_id)
    @data[box_id]["bone"]["tastiness"]
  end

  def get_kibble_info(box_id)
    @data[box_id]["kibble"]["info"]
  end

  def get_kibble_tastiness(box_id)
    @data[box_id]["kibble"]["tastiness"]
  end

  def get_treat_info(box_id)
    @data[box_id]["treat"]["info"]
  end

  def get_treat_tastiness(box_id)
    @data[box_id]["treat"]["tastiness"]
  end

end
#
#
class MetaCorgiSnacks


  def initialize(box_id,snack_box=SnackBox.new)
    @box_id=box_id

    @snack_box = snack_box
  end

  # def method_missing(name, *args)
  #
  #   if (SnackBox.method_defined?('get_'+name.to_s+'_info'))
  #     MetaCorgiSnacks.define_snack(name)
  #     # self.send(name, args)
  #   else
  #     super(name, *args)
  #   end
  # end
  #
  #
  # def self.define_snack(name)
  #   define_method(name) {
  #     # info = @snack_box.send("get_#{name}_info", @box_id)
  #     # tastiness = @snack_box.send("get_#{name}_tastiness", @box_id)
  #     # # display_name = "#{(name.to_s).split('_').map(&:capitalize).join(' ')}"
  #     # # result = "#{display_name}: #{info}: #{tastiness}"
  #     # tastiness > 30 ? "* #{result}" : result
  #   }
  # end


  private

  def privy
    puts "private method"
  end
end
