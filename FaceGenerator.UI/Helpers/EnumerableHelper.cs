using System;
using System.Collections.Generic;

namespace FaceGenerator.UI.Helpers
{
    public static class EnumerableHelper
    {
        private static readonly Random Rand = new ();

        public static IEnumerable<float> GenerateRandom(int count)
        {
            for (int i = 0; i < count; i++)
            {
                yield return (float) Rand.NextDouble();
            }
        }
    }
}
