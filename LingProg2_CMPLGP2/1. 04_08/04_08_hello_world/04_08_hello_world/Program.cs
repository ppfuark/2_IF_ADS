using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_08_hello_world
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Pede para informar o nome e salva na variavel nome;
            Console.Write("Entre com seu nome: ");
            string nome = Console.ReadLine();
            //Pede para informar a idade e salva na variável idade;
            Console.Write("Entre com a sua idade: ");
            string idade = Console.ReadLine();
            //Limpa o console
            Console.Clear();
            //Muda a cor de fundo e da fonte do texto
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.BackgroundColor = ConsoleColor.Green;
            //imprime uma mensagem com o nome e idade entrado
            Console.WriteLine("Olá {0}! A sua idade é {1} anos.", nome, idade);
            //Volta a cor de fundo e da fonte do texto para o padrão.
            Console.ResetColor();
            //imprime uma mensagem informando que o programa foi executado com sucesso
            Console.WriteLine("\nPrograma executado com sucesso!!!");
        }
    }
}
