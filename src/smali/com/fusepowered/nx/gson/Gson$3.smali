.class Lcom/fusepowered/nx/gson/Gson$3;
.super Lcom/fusepowered/nx/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/gson/Gson;->doubleAdapter(Z)Lcom/fusepowered/nx/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/nx/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/gson/Gson;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/gson/Gson;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/fusepowered/nx/gson/Gson$3;->this$0:Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {p0}, Lcom/fusepowered/nx/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Double;
    .locals 2
    .param p1, "in"    # Lcom/fusepowered/nx/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->peek()Lcom/fusepowered/nx/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/gson/stream/JsonToken;->NULL:Lcom/fusepowered/nx/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->nextNull()V

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fusepowered/nx/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/gson/Gson$3;->read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 3
    .param p1, "out"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    if-nez p2, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/nx/gson/stream/JsonWriter;

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 267
    .local v0, "doubleValue":D
    iget-object v2, p0, Lcom/fusepowered/nx/gson/Gson$3;->this$0:Lcom/fusepowered/nx/gson/Gson;

    invoke-static {v2, v0, v1}, Lcom/fusepowered/nx/gson/Gson;->access$000(Lcom/fusepowered/nx/gson/Gson;D)V

    .line 268
    invoke-virtual {p1, p2}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/fusepowered/nx/gson/stream/JsonWriter;

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/nx/gson/Gson$3;->write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
