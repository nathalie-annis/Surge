.data.vo.list |= map(
    if .type == "mallitems" and .saleType == 0
    then .imageUrls = [.imageUrls[-1]]
    else empty
    end
)