using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyMathFunctions;

namespace PE4
{
    class Program
    {
        //A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
        //Find the largest palindrome made from the product of two 3-digit numbers.
        static void Main(string[] args)
        {
            // Possible 3 digit number range is between 100 and 999

            // naive implementation
            var largestPalindrome = 0;

            for (int i = 100; i <= 999; i++)
            {
                for (int j = i; j <= 999; j++)
                {
                    var product = i * j;
                    if (MyMathClass.IsPalindrome(product) && product > largestPalindrome)
                    {
                        largestPalindrome = product;
                    }
                }
            }

            Console.WriteLine("Largest palindrome is " + largestPalindrome);
            Console.ReadKey();
        }
    }
}
