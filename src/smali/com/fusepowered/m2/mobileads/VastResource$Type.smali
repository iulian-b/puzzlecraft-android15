.class final enum Lcom/fusepowered/m2/mobileads/VastResource$Type;
.super Ljava/lang/Enum;
.source "VastResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/VastResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/mobileads/VastResource$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/m2/mobileads/VastResource$Type;

.field public static final enum HTML_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

.field public static final enum IFRAME_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

.field public static final enum STATIC_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;

    const-string v1, "STATIC_RESOURCE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    .line 28
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;

    const-string v1, "HTML_RESOURCE"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    .line 29
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;

    const-string v1, "IFRAME_RESOURCE"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/m2/mobileads/VastResource$Type;

    sget-object v1, Lcom/fusepowered/m2/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/fusepowered/m2/mobileads/VastResource$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;->$VALUES:[Lcom/fusepowered/m2/mobileads/VastResource$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/m2/mobileads/VastResource$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/fusepowered/m2/mobileads/VastResource$Type;->$VALUES:[Lcom/fusepowered/m2/mobileads/VastResource$Type;

    invoke-virtual {v0}, [Lcom/fusepowered/m2/mobileads/VastResource$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/m2/mobileads/VastResource$Type;

    return-object v0
.end method
