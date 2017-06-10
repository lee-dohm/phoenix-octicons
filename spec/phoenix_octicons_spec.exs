defmodule PhoenixOcticons.Spec do
  use ESpec

  describe "octicon" do
    let :beaker, do: PhoenixOcticons.octicon(:beaker)

    it "renders safe text" do
      {safe?, _} = beaker()

      expect(safe?).to eq(:safe)
    end

    it "renders an octicon in SVG form" do
      {:safe, text} = beaker()

      expect(text).to eq("<svg aria-hidden=\"true\" class=\"octicons octicons-beaker\" height=\"16\" version=\"1.1\" viewBox=\"0 0 16 16\" width=\"16\"><path fill-rule=\"evenodd\" d=\"M14.38 14.59L11 7V3h1V2H3v1h1v4L.63 14.59A1 1 0 0 0 1.54 16h11.94c.72 0 1.2-.75.91-1.41h-.01zM3.75 10L5 7V3h5v4l1.25 3h-7.5zM8 8h1v1H8V8zM7 7H6V6h1v1zm0-3h1v1H7V4zm0-3H6V0h1v1z\"/></svg>")
    end
  end

  describe "mega_octicon" do
    let :mega_beaker, do: PhoenixOcticons.mega_octicon(:beaker)

    it "renders safe text" do
      {safe?, _} = mega_beaker()

      expect(safe?).to eq(:safe)
    end

    it "renders an octicon in SVG form" do
      {:safe, text} = mega_beaker()

      expect(text).to eq("<svg aria-hidden=\"true\" class=\"octicons octicons-beaker\" height=\"32\" version=\"1.1\" viewBox=\"0 0 16 16\" width=\"32\"><path fill-rule=\"evenodd\" d=\"M14.38 14.59L11 7V3h1V2H3v1h1v4L.63 14.59A1 1 0 0 0 1.54 16h11.94c.72 0 1.2-.75.91-1.41h-.01zM3.75 10L5 7V3h5v4l1.25 3h-7.5zM8 8h1v1H8V8zM7 7H6V6h1v1zm0-3h1v1H7V4zm0-3H6V0h1v1z\"/></svg>")
    end
  end
end
