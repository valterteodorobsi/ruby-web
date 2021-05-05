

def screenshot(step)
  # screenshot = Base64.encode64(File.open(screenshot, "rb").read)
  screenshot =  page.save_screenshot("allure-results/chrome/#{@cenario_name} - #{step}.png")
  Allure.add_attachment(name: "#{@cenario_name} - #{step}", source: screenshot, type: Allure::ContentType::PNG)
end


#anexa direto o binário da screenshot no relatório
module Allure
  class FileWriter
    def write(name, source)
      #screenshot(name)
      filename = File.join(output_dir, name)
      File.open(filename, "w") { |file| file.write(source) }
    end
  end
end
