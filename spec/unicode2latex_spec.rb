require "unicode2latex"

RSpec.describe "Unicode2LaTeX" do
  it "has a version number" do
    expect(Unicode2LaTeX::VERSION).not_to be nil
  end

  it "converts LaTeX Unicode" do
    expect(Unicode2LaTeX.unicode2latex(<<~"INPUT")).to be_equivalent_to <<~"OUTPUT"
    M =
 \begin{bmatrix}
  -\sin λ_0 & \cos λ_0 & 0 \\
  -\sin φ_0 \cos λ_0 & -\sin φ_0 \sin λ_0 & \cos φ_0 \\
  \cos φ_0 \cos λ_0 & \cos φ_0 \sin λ_0 & \sin φ_0
 \end{bmatrix}
    INPUT
     \\begin{bmatrix}
  -\\sin \\lambda_0 & \\cos \\lambda_0 & 0 \\\\
  -\\sin \\varphi_0 \\cos \\lambda_0 & -\\sin \\varphi_0 \\sin \\lambda_0 & \\cos \\varphi_0 \\\\
  \\cos \\varphi_0 \\cos \\lambda_0 & \\cos \\varphi_0 \\sin \\lambda_0 & \\sin \\varphi_0
 \\end{bmatrix}
    OUTPUT
  end
end
