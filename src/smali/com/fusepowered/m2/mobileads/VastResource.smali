.class Lcom/fusepowered/m2/mobileads/VastResource;
.super Ljava/lang/Object;
.source "VastResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/mobileads/VastResource$1;,
        Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;,
        Lcom/fusepowered/m2/mobileads/VastResource$Type;
    }
.end annotation


# static fields
.field private static final VALID_APPLICATION_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_IMAGE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private mCreativeType:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHeight:I

.field private mResource:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mType:Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v3

    const-string v1, "image/png"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "image/bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastResource;->VALID_IMAGE_TYPES:Ljava/util/List;

    .line 20
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "application/x-javascript"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastResource;->VALID_APPLICATION_TYPES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/fusepowered/m2/mobileads/VastResource$Type;Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;II)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/fusepowered/m2/mobileads/VastResource$Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "creativeType"    # Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    invoke-static {p2}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    invoke-static {p3}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mResource:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mType:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    .line 129
    iput-object p3, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mCreativeType:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    .line 130
    iput p4, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mWidth:I

    .line 131
    iput p5, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mHeight:I

    .line 132
    return-void
.end method

.method static fromVastResourceXmlManager(Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;II)Lcom/fusepowered/m2/mobileads/VastResource;
    .locals 5
    .param p0, "resourceXmlManager"    # Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/fusepowered/m2/mobileads/VastResource$Type;->values()[Lcom/fusepowered/m2/mobileads/VastResource$Type;

    move-result-object v0

    .local v0, "arr$":[Lcom/fusepowered/m2/mobileads/VastResource$Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 61
    .local v3, "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    invoke-static {p0, v3, p1, p2}, Lcom/fusepowered/m2/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;Lcom/fusepowered/m2/mobileads/VastResource$Type;II)Lcom/fusepowered/m2/mobileads/VastResource;

    move-result-object v4

    .line 63
    .local v4, "vastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    if-eqz v4, :cond_0

    .line 67
    .end local v3    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .end local v4    # "vastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    :goto_1
    return-object v4

    .line 60
    .restart local v3    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .restart local v4    # "vastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v3    # "type":Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .end local v4    # "vastResource":Lcom/fusepowered/m2/mobileads/VastResource;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static fromVastResourceXmlManager(Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;Lcom/fusepowered/m2/mobileads/VastResource$Type;II)Lcom/fusepowered/m2/mobileads/VastResource;
    .locals 10
    .param p0, "resourceXmlManager"    # Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/fusepowered/m2/mobileads/VastResource$Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;->getIFrameResource()Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "iFrameResource":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;->getHTMLResource()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "htmlResource":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;->getStaticResource()Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "staticResource":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastResourceXmlManager;->getStaticResourceType()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "staticResourceType":Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    if-ne p1, v0, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    sget-object v0, Lcom/fusepowered/m2/mobileads/VastResource;->VALID_IMAGE_TYPES:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fusepowered/m2/mobileads/VastResource;->VALID_APPLICATION_TYPES:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_0
    move-object v1, v8

    .line 100
    .local v1, "resource":Ljava/lang/String;
    sget-object v0, Lcom/fusepowered/m2/mobileads/VastResource;->VALID_IMAGE_TYPES:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v3, Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;->IMAGE:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    .line 115
    .local v3, "creativeType":Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    :goto_0
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastResource;

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m2/mobileads/VastResource;-><init>(Ljava/lang/String;Lcom/fusepowered/m2/mobileads/VastResource$Type;Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;II)V

    .end local v1    # "resource":Ljava/lang/String;
    .end local v3    # "creativeType":Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    :goto_1
    return-object v0

    .line 103
    .restart local v1    # "resource":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;->JAVASCRIPT:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    .restart local v3    # "creativeType":Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    goto :goto_0

    .line 105
    .end local v1    # "resource":Ljava/lang/String;
    .end local v3    # "creativeType":Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    :cond_2
    sget-object v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    if-ne p1, v0, :cond_3

    if-eqz v6, :cond_3

    .line 106
    move-object v1, v6

    .line 107
    .restart local v1    # "resource":Ljava/lang/String;
    sget-object v3, Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;->NONE:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    .restart local v3    # "creativeType":Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    goto :goto_0

    .line 108
    .end local v1    # "resource":Ljava/lang/String;
    .end local v3    # "creativeType":Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    :cond_3
    sget-object v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    if-ne p1, v0, :cond_4

    if-eqz v7, :cond_4

    .line 109
    move-object v1, v7

    .line 110
    .restart local v1    # "resource":Ljava/lang/String;
    sget-object v3, Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;->NONE:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    .restart local v3    # "creativeType":Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    goto :goto_0

    .line 112
    .end local v1    # "resource":Ljava/lang/String;
    .end local v3    # "creativeType":Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "vastClickThroughUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "webViewClickThroughUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 195
    sget-object v1, Lcom/fusepowered/m2/mobileads/VastResource$1;->$SwitchMap$com$mopub$mobileads$VastResource$Type:[I

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mType:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    invoke-virtual {v2}, Lcom/fusepowered/m2/mobileads/VastResource$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object p2, v0

    .line 207
    .end local p2    # "webViewClickThroughUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    return-object p2

    .line 197
    .restart local p2    # "webViewClickThroughUrl":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;->IMAGE:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mCreativeType:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    if-ne v1, v2, :cond_1

    move-object p2, p1

    .line 198
    goto :goto_0

    .line 199
    :cond_1
    sget-object v1, Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;->JAVASCRIPT:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mCreativeType:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    if-eq v1, v2, :cond_0

    move-object p2, v0

    .line 202
    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getCreativeType()Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mCreativeType:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mResource:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mType:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    return-object v0
.end method

.method public initializeWebView(Lcom/fusepowered/m2/mobileads/VastWebView;)V
    .locals 3
    .param p1, "webView"    # Lcom/fusepowered/m2/mobileads/VastWebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    invoke-static {p1}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mType:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    sget-object v2, Lcom/fusepowered/m2/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    if-ne v1, v2, :cond_1

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" height=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mResource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"></iframe>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fusepowered/m2/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mType:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    sget-object v2, Lcom/fusepowered/m2/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    if-ne v1, v2, :cond_2

    .line 162
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mResource:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fusepowered/m2/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mType:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    sget-object v2, Lcom/fusepowered/m2/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mCreativeType:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    sget-object v2, Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;->IMAGE:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    if-ne v1, v2, :cond_3

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><head></head><body style=\"margin:0;padding:0\"><img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mResource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/fusepowered/m2/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v0    # "data":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mCreativeType:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    sget-object v2, Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;->JAVASCRIPT:Lcom/fusepowered/m2/mobileads/VastResource$CreativeType;

    if-ne v1, v2, :cond_0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<script src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/VastResource;->mResource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .restart local v0    # "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/fusepowered/m2/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    goto :goto_0
.end method
