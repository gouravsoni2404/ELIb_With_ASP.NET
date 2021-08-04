using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Elib.utility
{
    public static class NumberConversion
    {
        private static string ALPHABET = string.Empty;
        private static Dictionary<char, int> ALPHABET_VALUE_INDEX_DICT = null;

        static NumberConversion()
        {
            ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_";
            ALPHABET_VALUE_INDEX_DICT = new Dictionary<char, int>();
            int indexCounter = 0;
            foreach(char val in ALPHABET.ToCharArray())
            {
                ALPHABET_VALUE_INDEX_DICT.Add(val, indexCounter++);
            }
        }

        public static string Int2radix64(int num)
        {
            StringBuilder stringBuilder = new StringBuilder();
            while (num > 0)
            {
                int r = num % 64;
                stringBuilder.Append(ALPHABET[r]);
                num = num / 64;
            }
            return stringBuilder.ToString().Reverse().ToString();
        }

        public static long Radix64toint(string str)
        {
            char[] chars = str.ToCharArray();
            long num = 0;
            for (int i = 0; i < chars.Length; i++)
            {
                num += ALPHABET_VALUE_INDEX_DICT[chars[i]] * Convert.ToInt64(Math.Pow(64, i));
            }
            return num;
        }
    }
}