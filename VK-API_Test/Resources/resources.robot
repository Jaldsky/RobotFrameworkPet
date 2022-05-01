*** Settings ***
Library    RequestsLibrary
Library    String

*** Variables ***
${auth_url}    https://api.vk.com/method
${auth_token}    access_token=880e44a594166a1f7a1d10884139f111a8c9f39dc8027e5605d5c7114a05bc5d7240e42a39b505cb8eb2f
${api_v}    v=5.81