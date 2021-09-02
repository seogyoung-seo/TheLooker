import requests
from bs4 import BeautifulSoup

LIMIT = 50
URL = f'https://www.indeed.com/jobs?q=python&limit={LIMIT}'

def extract_indeed_pages():
    last = False
    page_num = 1
    
    while last == False:
        if page_num != 1:
            global URL 
            URL = f'https://www.indeed.com/jobs?q=python&limit={LIMIT}&start={LIMIT*page_num}'
        
        result = requests.get(URL)
        soup = BeautifulSoup(result.text, 'html.parser')
        pagination = soup.find('ul', {'class':'pagination-list'})
        links = pagination.find_all('a')

        if 'Next' in str(links[-1]):
            page_num = int(links[-2].find('span').string)
        else:
            page_num = int(links[-1].find('span').string)
            last = True
    
    return page_num

def extract_indeed_jobs(last_page):
    jobs = []
    for page in range(last_page):
        result = requests.get(f"{URL}&start={page*LIMIT}")
        soup = BeautifulSoup(result.text, 'html.parser')
        results = soup.find_all('div', {"class" : "slider_container"})
        for result in results:
            title = result.find('h2', {"class" : "jobTitle"}).find('span').get('title')
                        
            company = result.find('span', {"class" : "companyName"})
            company_anchor = company.find('a')
            if company_anchor is not None:
                company = str(company_anchor.string)
            else:
                company = str(company.string)
            
            if title is not None and company is not None:
                title = title.strip()
                company = company.strip()
                print(title, '---', company)
            
    return jobs