.class final enum Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;
.super Ljava/lang/Enum;
.source "AdRequestStatusMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoadingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

.field public static final enum LOADED:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

.field public static final enum LOADING:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

.field public static final enum PLAYED:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->LOADING:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    new-instance v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->LOADED:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    new-instance v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    const-string v1, "PLAYED"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->PLAYED:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    sget-object v1, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->LOADING:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->LOADED:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->PLAYED:Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->$VALUES:[Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->$VALUES:[Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    invoke-virtual {v0}, [Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/m2/mobileads/AdRequestStatusMapping$LoadingStatus;

    return-object v0
.end method
