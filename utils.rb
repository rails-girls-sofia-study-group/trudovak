def remove_extra_space(text)
  if text.include? " \r\n"
    text.sub " \r\n", "\r\n"
  else
    text
  end
end
