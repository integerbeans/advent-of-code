using System;
using System.IO;
using System.Linq;
using System.Text;

namespace adventofcode
{
    class day04
    {
        static void solveBingo(List<String> infile )
        {
        const string f_seperator = "\u0020";
        const string h_seperator = "\u002C";

        var header = infile.First().Split(h_seperator)
            .Select(int.Parse).ToArray();

        var fields = infile
            .Skip(1)
            .Where(l => l != string.Empty)
            .Select(l => l.Split(f_seperator, StringSplitOptions.RemoveEmptyEntries)
                .Select(int.Parse).ToArray()).Chunk(5)
            .Select(fld => (fld, x: fld
                .Concat(Enumerable.Range(0, 5).Select(c => fld.Select(r => r[c])))
                .Select(r => r.Select(x => Array.IndexOf(header, x)).Max()).Min()))
            .OrderBy(t => t.x).ToArray();

        var res = new[] { fields.First(), fields.Last() }.Select(t => t.fld.SelectMany(r => r).Where(x => !header.Take(t.x + 1).Contains(x)).Sum() * header[t.x]);

        formatOutput(res.Cast<object>().ToArray());
        }

        static void formatOutput(Array res)
        {
        foreach (var r in res)
            Console.WriteLine("🎄: " + r); 
        }

        static void Main(string[] args)
        {
            using (StreamReader reader = new StreamReader("input.txt"))
            {
                String l;
                List<String> infile = new List<String>();
                while ((l = reader.ReadLine()) != null) { infile.Add(l); }
                solveBingo(infile);
            }
        }
    }
}