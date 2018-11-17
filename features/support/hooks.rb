Before do
    Capybara.page.current_window.resize_to(1280, 720)
end

After do
   puts "Fim do teste"
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')  #elimina caracteres especiais do nome do cenario
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!  # substitui espacos por _ e converte tudo em minusculas
    screenshot = "reports/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidencia')
end