# BarcodeScanApi
Generate the Cloudmersive Barcode API Java V2 Client

All URIs are relative to *https://api.cloudmersive.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**barcodeScanImage**](BarcodeScanApi.md#barcodeScanImage) | **POST** /barcode/scan/image | Scan and recognize an image of a barcode |
| [**barcodeScanImageAdvanced**](BarcodeScanApi.md#barcodeScanImageAdvanced) | **POST** /barcode/scan/image/advanced | Advanced AI scan and recognition of an image of one or more barcodes of any type |
| [**barcodeScanImageAdvancedQR**](BarcodeScanApi.md#barcodeScanImageAdvancedQR) | **POST** /barcode/scan/image/advanced/qr | Advanced AI scan and recognition of an image of one or more QR barcodes |


<a id="barcodeScanImage"></a>
# **barcodeScanImage**
> BarcodeScanResult barcodeScanImage(imageFile)

Scan and recognize an image of a barcode

Scan an image or photo of a barcode and return the result.  Supported barcode types include AZTEC, CODABAR, CODE_39, CODE_93, CODE_128, DATA_MATRIX, EAN_8, EAN_13, ITF, MAXICODE, PDF_417, QR_CODE, RSS_14, RSS_EXPANDED, UPC_A, UPC_E, All_1D, UPC_EAN_EXTENSION, MSI, PLESSEY, IMB

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BarcodeScanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.cloudmersive.com");
    
    // Configure API key authorization: Apikey
    ApiKeyAuth Apikey = (ApiKeyAuth) defaultClient.getAuthentication("Apikey");
    Apikey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //Apikey.setApiKeyPrefix("Token");

    BarcodeScanApi apiInstance = new BarcodeScanApi(defaultClient);
    File imageFile = new File("/path/to/file"); // File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    try {
      BarcodeScanResult result = apiInstance.barcodeScanImage(imageFile);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BarcodeScanApi#barcodeScanImage");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **imageFile** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | |

### Return type

[**BarcodeScanResult**](BarcodeScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a id="barcodeScanImageAdvanced"></a>
# **barcodeScanImageAdvanced**
> BarcodeAdvancedScanResult barcodeScanImageAdvanced(imageFile)

Advanced AI scan and recognition of an image of one or more barcodes of any type

Scan an image or photo of a barcode and return the result with enhanced accuracy, particularlly for low quality inputs using Advanced AI.  Supported barcode types include AZTEC, CODABAR, CODE_39, CODE_93, CODE_128, DATA_MATRIX, EAN_8, EAN_13, ITF, MAXICODE, PDF_417, QR_CODE, RSS_14, RSS_EXPANDED, UPC_A, UPC_E, All_1D, UPC_EAN_EXTENSION, MSI, PLESSEY, IMB.  Uses large model AI.  Consumes 100 API calls per image page.  For Managed Instance and Private Cloud requires GPU infrastructure.  Supports PNG, PDF and JPEG input file formats.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BarcodeScanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.cloudmersive.com");
    
    // Configure API key authorization: Apikey
    ApiKeyAuth Apikey = (ApiKeyAuth) defaultClient.getAuthentication("Apikey");
    Apikey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //Apikey.setApiKeyPrefix("Token");

    BarcodeScanApi apiInstance = new BarcodeScanApi(defaultClient);
    File imageFile = new File("/path/to/file"); // File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    try {
      BarcodeAdvancedScanResult result = apiInstance.barcodeScanImageAdvanced(imageFile);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BarcodeScanApi#barcodeScanImageAdvanced");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **imageFile** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | |

### Return type

[**BarcodeAdvancedScanResult**](BarcodeAdvancedScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a id="barcodeScanImageAdvancedQR"></a>
# **barcodeScanImageAdvancedQR**
> BarcodeScanQRAdvancedResult barcodeScanImageAdvancedQR(imageFile, preprocessing, recognitionMode)

Advanced AI scan and recognition of an image of one or more QR barcodes

Scan an image or photo of a QR barcode and return the result.  Uses AI deep learning to read blurry or low resultion QR barcodes.  Supports PNG, PDF and JPEG input file formats.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BarcodeScanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.cloudmersive.com");
    
    // Configure API key authorization: Apikey
    ApiKeyAuth Apikey = (ApiKeyAuth) defaultClient.getAuthentication("Apikey");
    Apikey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //Apikey.setApiKeyPrefix("Token");

    BarcodeScanApi apiInstance = new BarcodeScanApi(defaultClient);
    File imageFile = new File("/path/to/file"); // File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    String preprocessing = "preprocessing_example"; // String | Optional, preprocessing mode, default is 'Auto'.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image - including automatic unrotation of the image - before OCR is applied; this is recommended).  Set this to 'None' if you do not want to use automatic image unrotation and enhancement.
    String recognitionMode = "recognitionMode_example"; // String | Optional, recognitionMode mode, default is 'Advanced'.  Possible values are Advanced, and Advanced2 which provides the most advanced available barcode recognition.
    try {
      BarcodeScanQRAdvancedResult result = apiInstance.barcodeScanImageAdvancedQR(imageFile, preprocessing, recognitionMode);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BarcodeScanApi#barcodeScanImageAdvancedQR");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **imageFile** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | |
| **preprocessing** | **String**| Optional, preprocessing mode, default is &#39;Auto&#39;.  Possible values are None (no preprocessing of the image), and Auto (automatic image enhancement of the image - including automatic unrotation of the image - before OCR is applied; this is recommended).  Set this to &#39;None&#39; if you do not want to use automatic image unrotation and enhancement. | [optional] |
| **recognitionMode** | **String**| Optional, recognitionMode mode, default is &#39;Advanced&#39;.  Possible values are Advanced, and Advanced2 which provides the most advanced available barcode recognition. | [optional] |

### Return type

[**BarcodeScanQRAdvancedResult**](BarcodeScanQRAdvancedResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

