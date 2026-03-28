from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

driver = webdriver.Chrome()
driver.get("https://www.vogue.in/")
driver.maximize_window()

wait = WebDriverWait(driver, 10)

wait.until(EC.element_to_be_clickable((By.XPATH, "//a[contains(text(),'Shopping')]"))).click()

driver.execute_script("window.scrollBy(0,500)")

# driver.find_element(By.XPATH, '//img[@alt="Image may contain Accessories Adult Person and Headband"]').click()
wait.until(EC.element_to_be_clickable((By.XPATH, '//img[@alt="Image may contain Accessories Adult Person and Headband"]'))).click()


Windows=driver.window_handles
driver.switch_to.window(Windows[-1])
# name = wait.until(EC.presence_of_element_located((By.XPATH, '//h1[text()="Olive Crest (Wings)"]')))
name = wait.until(EC.presence_of_element_located((By.XPATH, '//h1[contains(text(),"Olive Crest (Wings")]')))
price = wait.until(EC.presence_of_element_located((By.XPATH, '//span[text()="Rs. 5,999"]')))

print({name.text: price.text})


driver.quit()

