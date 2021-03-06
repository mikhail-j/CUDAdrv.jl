@testset "devices" begin

name(dev)
totalmem(dev)
attribute(dev, CUDAdrv.MAX_THREADS_PER_BLOCK)
@test warpsize(dev) == Int32(32)
capability(dev)
@grab_output show(STDOUT, "text/plain", dev)

end