{
  lib,
  perlPackages,
  fetchurl,
}:

perlPackages.buildPerlPackage {
  pname = "graph-easy";
  version = "0.76";
  src = fetchurl {
    url = "mirror://cpan/authors/id/S/SH/SHLOMIF/Graph-Easy-0.76.tar.gz";
    sha256 = "d4a2c10aebef663b598ea37f3aa3e3b752acf1fbbb961232c3dbe1155008d1fa";
  };

  meta = with lib; {
    description = "Render/convert graphs in/from various formats";
    license = licenses.gpl1Only;
    platforms = platforms.unix;
    maintainers = [ maintainers.jensbin ];
    mainProgram = "graph-easy";
  };
}
