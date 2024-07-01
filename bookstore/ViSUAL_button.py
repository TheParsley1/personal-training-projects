from tkinter import *
from tkinter import ttk
import pymysql as sql
#####################################
def OPEN_VISUAL_vibor():
    window_button.destroy()

def input_Listbox():
    selected_Listbox = vibor_table.curselection()
    selected_langs = ",".join([vibor_table.get(i) for i in selected_Listbox])
    return selected_langs

def input_Listbox1(*args):
    selected_langs = str(input_Listbox())
    if selected_langs == "Удалить":
        greeting["text"] = "Введите в нижнее окно id элемента для удаления"
    elif selected_langs == "Добавить":
        greeting["text"] = "Пример ввода : 1||Мама||Мыла||Раму"
    elif selected_langs == "SQL":
        greeting["text"] = "Введите SQL запрос в нижнее окно"

def input_button():
    selected_langs = str(input_Listbox())
    if selected_langs == 'SQL':
        entry_text.delete("1.0", END)
        text_SQL = entry_text1.get("1.0", "end")
        cursor.execute(f"{text_SQL}")
        rows = str(cursor.fetchall())
        rows = rows.replace("), (", ") \n(")
        for i in cursor.description:
            entry_text.replace(END, END, f"{i[0]} || ")
        entry_text.replace(END, END, "\n")
        entry_text.replace(END, END, f"{rows}")
        connection.commit()
    elif selected_langs == 'Удалить':
        entry_text.delete("1.0", END)
        text_SQL = entry_text1.get("1.0", END)
        cursor.execute(f"DELETE FROM {str(var.get())} WHERE {str(cursor.description[0][0])}={text_SQL}")
        rows_exit()
    elif selected_langs == 'Добавить':
        cursor.execute(f"INSERT INTO {str(var.get())} {stl_table()} VALUES({text_plus()})")
        rows_exit()

def rows_exit(*arg):
    entry_text.delete("1.0", END)
    cursor.execute(f"SELECT * FROM {str(var.get())}")  # представление текста как запрос sql
    rows = str(cursor.fetchall())  # запрос из бд
    rows = rows.replace("), (", ") \n(")
    for i in cursor.description:
        entry_text.replace(END, END, f"{i[0]} || ")
    entry_text.replace(END, END, f"\n{rows}")
    connection.commit()
def stl_table():
    item = ''
    for i in cursor.description:
        item += ' '+i[0]+','
    item1 = '('+item[1:-1]+')'
    return item1
def text_plus():
    text_SQL = entry_text1.get("1.0", "end")
    text_SQL.split('||')
    item = ''
    for i in text_SQL.split('||'):
        item += "'"+i+"', "
    item1 = item[0:-2]
    return item1.replace('\n', '')

#####################################
window_button = Tk()
window_button.title("")
#####################################
connection = sql.connect(host='127.0.0.1', user='root', passwd='', db='bookstore', charset='utf8')
cursor = connection.cursor()
##################################### размеры и расположение ока
w = window_button.winfo_screenwidth()
h = window_button.winfo_screenheight()
w = w // 2 - 550
h = h // 2 - 350
window_button.geometry(f'1100x650+{w}+{h}')
window_button.resizable(width=False, height=False)
#####################################
Button(window_button, text='EXIT', height=2, width=10, command=lambda: OPEN_VISUAL_vibor()).place(x=50, y=50, anchor=CENTER)
#####################################
var = StringVar()
combobox = ttk.Combobox(window_button, textvariable=var)
combobox['values'] = ('authors', 'books', 'categories', 'clients', 'orders', 'publishers', 'reviews', 'shopping_carts')
combobox['state'] = 'readonly'
combobox.place(x=950, y=50, anchor=CENTER)
var.trace('w', rows_exit)
#####################################

#####################################
vibor_table = Listbox(height=3, selectmode=SINGLE, exportselection=0)
vibor_table.insert(0, 'SQL')
vibor_table.insert(1, 'Добавить')
vibor_table.insert(2, 'Удалить')
vibor_table.pack()
vibor_table.place(y=50, x=550, anchor=CENTER)
vibor_table.bind("<<ListboxSelect>>", input_Listbox1)
#####################################
selected_langs = ''
Button(window_button, text='Ввод', height=2, width=10, command=lambda: input_button()).place(y=50, x=400, anchor=CENTER)
#####################################
entry_text = Text(height=20, width=100, wrap=WORD)
entry_text1 = Text(height=10, width=100, wrap=WORD)
#####################################
entry_text.pack()
entry_text.place(x=550, y=250, anchor=CENTER)
entry_text1.pack(anchor=S)
entry_text1.place(x=550, y=510, anchor=CENTER)
#####################################
greeting = Label(text="")
greeting.pack()
#####################################
window_button.mainloop()
connection.commit()
connection.close()
