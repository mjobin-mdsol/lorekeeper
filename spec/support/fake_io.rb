
class FakeJSONIO
  def close
  end
  def write(msg)
    @msg = msg
  end
  def received_message
    @msg && JSON.parse(@msg)
  end
end

class FakeIO
  def close
  end
  def write(msg)
    @msg = msg
  end
  def received_message
    @msg
  end
end